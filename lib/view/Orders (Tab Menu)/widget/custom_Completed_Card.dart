import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constant/utils/DynamicDimensions.dart';
import '../../widgets/custom_text.dart';

class custom_Completed_Card extends StatelessWidget {
  final String? restaurantName;
  final String? imagePath;
  final String? itemsInfo;
  final String? price;
  final String? status;
  final VoidCallback? onLeaveReview;
  final VoidCallback? onOrderAgain;

  const custom_Completed_Card({
    Key? key,
    this.restaurantName,
    this.imagePath,
    this.itemsInfo,
    this.price,
    this.status,
    this.onLeaveReview,
    this.onOrderAgain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.only(
          right:DynamicDimensions.width(context, 0.045),
      left: DynamicDimensions.width(context, 0.045),
        top: DynamicDimensions.height(context, 0.020)
      ),
      child: SizedBox(
        height: DynamicDimensions.height(context, 0.28),
        // 28% of the screen height
        child: Card(
          elevation: 5,
          color: Colors.grey[100],
          margin: EdgeInsets.symmetric(
              vertical: DynamicDimensions.height(context, 0.01)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              DynamicDimensions.radius(context, 0.04),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(DynamicDimensions.width(context, 0.025)), // 2.5% of the screen width
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRect(
                      child: CircleAvatar(
                        radius: AppDimensions.radius50(context),
                        backgroundImage:
                            const AssetImage('assets/images/food.png'),
                      ),
                    ),
                    SizedBox(width: DynamicDimensions.width(context, 0.03)), // 3% of the screen width
                    Column(
                      children: [
                        CustomText(
                          text: restaurantName,
                          textStyle: GoogleFonts.openSans(
                            fontSize: AppDimensions.font20(context),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: AppDimensions.height5(context)),
                        Text(itemsInfo!),
                        //'2 items | 2.7 km'
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: price,
                        //'\$22.00',
                        textStyle: GoogleFonts.openSans(
                            color: Colors.green,
                            fontSize: AppDimensions.font20(context)),
                      ),
                      SizedBox(width: DynamicDimensions.width(context, 0.03)), // 2% of the screen width
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        padding:   EdgeInsets.symmetric(
                          horizontal: DynamicDimensions.width(context, 0.02), // 2% of the screen width
                          vertical: DynamicDimensions.height(context, 0.005),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: CustomText(
                          text: 'Completed',
                          textStyle: GoogleFonts.openSans(
                            fontSize: AppDimensions.font12(context),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppDimensions.height5(context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.green),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Leave a Review',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Order Again',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

