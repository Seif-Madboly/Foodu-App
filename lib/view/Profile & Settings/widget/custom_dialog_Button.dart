// ignore: file_names
import 'package:flutter/material.dart';

import '../../../constant/utils/dimensions.dart';
import '../../widgets/custom_text.dart';

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

// ignore: camel_case_types
class custom_Dialog_Button extends StatelessWidget {
  const custom_Dialog_Button({Key? key,
    required this.text,
    required this.onPress, this.colors, this.textColors,
  }) : super(key: key);

  final String text;
  final VoidCallback onPress;
  final Color? colors;
  final Color? textColors;

  @override
  Widget build(BuildContext context) {
    // Responsive button dimensions
    double buttonWidth = screenWidth(context) * 0.33;   // Adjust width to 80% of screen width
    double buttonHeight = screenHeight(context) / 18;  // Adjust height as needed

    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors ?? Colors.green[900],
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
          color: textColors??Colors.white,
          fontSize: AppDimensions.font12(context),
        ),
      ),
    );
  }
}
