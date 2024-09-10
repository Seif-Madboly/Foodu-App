// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:foodu_food_delivery_app_ui/view/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class active_Screen extends StatelessWidget {
  const active_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/empty.png',
                    ),
                    fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
            CustomText(
              alignment: Alignment.center,
            text: "Empty",
            textStyle:  GoogleFonts.roboto(
                letterSpacing: 0.7,
              fontSize: AppDimensions.font26(context),
            ),
          ),
          CustomText(
            alignment: Alignment.center,
            text: "You do not have an active order at this time",
            textStyle:  GoogleFonts.roboto(
                letterSpacing: 0.4,
                fontSize: AppDimensions.font16(context)
            ),
          ),

        ],
      ),
    );
  }
}
