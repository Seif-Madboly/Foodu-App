// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'custom_text.dart';


double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    // Responsive button dimensions
    double buttonWidth = screenWidth(context) * 0.9;   // Adjust width to 80% of screen width
    double buttonHeight = screenHeight(context) / 16;  // Adjust height as needed

    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green[900],
          foregroundColor: const Color(0xff01BAEF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          animationDuration: const Duration(milliseconds: 500),
        ),
        onPressed: onPress,
        child: CustomText(
          text: text,
          alignment: Alignment.center,
          color: Colors.white,
          fontSize: AppDimensions.font12(context),
        ),
      ),
    );
  }
}

/* MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(18),
          color: primaryColor,
          onPressed: onPress(),
          child: CustomText(
            text: text,
            alignment: Alignment.center,
            color: Colors.white,
          )),*/

/*ElevatedButton(
      style: ElevatedButton.styleFrom(
        //change the button's background color
        primary: primary,
        //colors of text,icon,hover,focus,pressed
        onPrimary: const Color(0xff01BAEF),
        elevation: 10,
        //gives padding to the button
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        //set minimum size for the button of (width, height)
        minimumSize: const Size(270, 56),
        //shape of the button
        shape: const StadiumBorder(),
        //the speed of the hover animation
        animationDuration: const Duration(milliseconds: 500),
        // textStyle: TextStyle(
        //   //this color will not overwrite the onPrimary text color
        //   color: Colors.green,
        //   fontSize: 20,
        //   fontWeight: FontWeight.bold,
        // ),
      ),
      child: Text(text, style: style),
      onPressed: onTap,
    );*/
