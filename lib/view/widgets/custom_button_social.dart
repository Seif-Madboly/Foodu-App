// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../constant/utils/dimensions.dart';
import 'custom_text.dart';

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

class CustomButtonSocial extends StatelessWidget {
  const CustomButtonSocial({
    required this.text,
    required this.imageName,
    required this.onPress,
  });

  final String text;
  final String imageName;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    // Responsive height and width
    double buttonHeight = screenHeight(context) / 15;  // Adjust as needed
    double buttonWidth = screenWidth(context) * 0.8;   // Adjust as needed
    double imageHeight = screenHeight(context) / 25;   // Adjust as needed
    double spacing = screenWidth(context) / 12;        // Adjust spacing between image and text

    return Center(
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: MaterialButton(
          onPressed: onPress as void Function()?, // Corrected the onPress call
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageName,
                height: imageHeight,
              ),
              SizedBox(width: spacing),
              CustomText(
                alignment: Alignment.center,
                text: text,
                fontSize: AppDimensions.font12(context),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
