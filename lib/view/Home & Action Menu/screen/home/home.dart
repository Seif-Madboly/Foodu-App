// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/App_assets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant/utils/DynamicDimensions.dart';
import '../../../../constant/utils/dimensions.dart';
import '../../../Account Setup/controller/Profile_Controller.dart';
import '../../../Orders (Tab Menu)/widget/Custom_Title_Row.dart';
import '../../../widgets/custom_text.dart';
import '../../widget/Discount_widget.dart';
import '../../widget/category.dart';

class home_Screen extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(
          right: DynamicDimensions.width(context, 0.045),
          left: DynamicDimensions.width(context, 0.045),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: DynamicDimensions.radius(context, 0.075),
                    backgroundImage: const AssetImage(AppImageAssets.profile),
                    backgroundColor: Colors.black54,
                  ),
                  SizedBox(width: DynamicDimensions.width(context, 0.03)),
                  CustomText(
                    text: "User Name",
                    textStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: AppDimensions.font20(context)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CupertinoSearchTextField(
                  controller: searchController,
                  padding:
                      EdgeInsets.all(DynamicDimensions.width(context, 0.035)),
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: const Icon(
                    Icons.cancel,
                    color: Colors.grey,
                  ),
                  style: const TextStyle(color: Colors.white),
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  onChanged: (value) {},
                ),
              ),
              const custom_TitleRow(
                name: "Special Offers",

              ),
              SizedBox(height: DynamicDimensions.height(context, 0.02)),
              SizedBox(
                height: DynamicDimensions.height(context, 0.23),
                width: double.infinity,
                child: GridView.builder(
                  itemCount: categories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryCard(
                      category: categories[index],
                      imageSize: DynamicDimensions.imageSize(context, 0.1),
                      fontSize: AppDimensions.font12(context),
                    );
                  },
                ),
              ),
              SizedBox(height: DynamicDimensions.height(context, 0.01)),
              const custom_TitleRow(
                name: "Discount Guaranteed!",
                emoji:"👌" ,
              ),
              SizedBox(height: DynamicDimensions.height(context, 0.02)),
              SizedBox(
                height: DynamicDimensions.height(context, 0.35),
                width: double.infinity,
                // Add specific height instead of Expanded
                child: GridView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return discount_Widget(
                      discount_Card: discounts[index],
                    );
                  },
                ),
              ),
              const custom_TitleRow(
                name: "Recommended For You ",
                emoji:"😍" ,
              ),
              Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
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
                          SizedBox(
                              width: DynamicDimensions.width(
                                  context, 0.03)), // 3% of the screen width
                          Column(
                            children: [
                              CustomText(
                                text: "restaurantName",
                                textStyle: GoogleFonts.openSans(
                                  fontSize: AppDimensions.font20(context),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 10),
                              const Text(
                                '800 m | ⭐ 4.9 (2.3k)',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$2.00",
                                    style: GoogleFonts.openSans(
                                       color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(width: AppDimensions.width90(context)),

                                  FaIcon(
                                    FontAwesomeIcons.heart,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                              //'2 items | 2.7 km'
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
