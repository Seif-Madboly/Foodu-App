import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/utils/App_assets.dart';
import '../../../constant/utils/DynamicDimensions.dart';
import '../../../constant/utils/dimensions.dart';
import '../../widgets/custom_text.dart';

final List<Discount_Card> discounts = [
  Discount_Card(
      name: "Mixed Salad", imagePath: AppImageAssets.salad, price: "2.00", disPrice: '6.00'),
  Discount_Card(
      name: "Mixed Salad", imagePath: AppImageAssets.salad, price: "6.00", disPrice: '6.00'),
  Discount_Card(
      name: "Mixed Salad", imagePath: AppImageAssets.salad, price: "6.00", disPrice: '6.00'),
  Discount_Card(
      name: "Mixed Salad", imagePath: AppImageAssets.salad, price: "6.00", disPrice: '6.00'),
  Discount_Card(
      name: "Mixed Salad", imagePath: AppImageAssets.salad, price: "6.00", disPrice: '6.00'),
  Discount_Card(
      name: "Mixed Salad", imagePath: AppImageAssets.salad, price: "6.00", disPrice: '6.00'),
];

class Discount_Card {
  final String name;
  final String imagePath;
  final String price;
  final String disPrice;

  Discount_Card({
    required this.name,
    required this.imagePath,
    required this.disPrice,
    required this.price,
  });
}

class discount_Widget extends StatelessWidget {
  final Discount_Card discount_Card;
  final String? name;
  final String? imagePath;
  final String? price;

  const discount_Widget(
      {Key? key,
      required this.discount_Card,
      this.name,
      this.imagePath,
      this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: DynamicDimensions.width(context,0.09),
      height: DynamicDimensions.height(context, 0.5),
      child: Card(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            DynamicDimensions.radius(context, 0.04),
          ),
        ),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  child: Image.asset(
                    discount_Card.imagePath,
                    height: DynamicDimensions.height(context, 0.19),
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: DynamicDimensions.height(context, 0.01),
                  // Example: 0.01 for 1% of screen height
                  left: DynamicDimensions.width(context, 0.01),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(
                        DynamicDimensions.radius(context, 0.02),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: DynamicDimensions.width(context, 0.007),
                      // Example: 0.005 for 0.5% of screen width
                      vertical: DynamicDimensions.height(context,
                          0.005), // Example: 0.005 for 0.5% of screen height
                    ),
                    child: CustomText(
                        text: 'PROMO',
                        textStyle: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: AppDimensions.font8(context),
                        )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                      text: discount_Card.name,
                      textStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: AppDimensions.font18(context),
                      )),
                  SizedBox(height: AppDimensions.height5(context)),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: AppDimensions.iconSize16(context),
                      ),
                      const Text('1.5 km|'),
                      Icon(Icons.star,
                          size: AppDimensions.iconSize16(context),
                          color: Colors.yellow),
                      const Text('4.8 (1.2k)'),
                    ],
                  ),
                  SizedBox(height: AppDimensions.height5(context)),
                  Row(
                    children: [
                      Text(
                        "\$${discount_Card.price}",
                        style: GoogleFonts.openSans(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: AppDimensions.width5(context)),
                      CustomText(
                          text: '\$${discount_Card.disPrice}',
                          textStyle: GoogleFonts.openSans(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: AppDimensions.font18(context),
                          )),
                      const Spacer(),
                      const FaIcon(
                        FontAwesomeIcons.heart,
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
