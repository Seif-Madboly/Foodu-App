import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/utils/dimensions.dart';

class Custom_DataTime_FromField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final FormFieldValidator<String>? validator;
  final String? labelText;
  final String? hintText;
  final TextStyle? textStyle;
  final IconData? suffixIcon;
  final IconData? suffix;
  final VoidCallback? onTap;
  final TextInputAction? textInputAction;
  final FontWeight? fontWeight;
  final VoidCallback? suffixPressed;

  Custom_DataTime_FromField({
    Key? key,
    this.controller,
    this.type,
    this.validator,
    this.labelText,
    this.suffix,
    this.onTap,
    this.textInputAction,
    this.fontWeight,
    this.hintText,
    this.suffixPressed,
    this.textStyle,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return SizedBox(
      width: AppDimensions.width380(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 13),
        child: TextFormField(
          controller: controller,
          keyboardType: type,
          textInputAction: textInputAction,
          validator: validator,
          onTap: onTap,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: Colors.grey[100],
            labelText: labelText,
            labelStyle: GoogleFonts.abel(
              fontSize: AppDimensions.font12(context),
              color: Colors.grey.shade400,
            ),
            hintText: hintText,
            hintStyle: textStyle ??
                GoogleFonts.karla(
                  //fontSize: AppDimensions.font8(context),
                  color: Colors.grey.shade500,
                ),
            suffixIcon: suffixIcon != null
                ? IconButton(
                    onPressed: suffixPressed,
                    icon: Icon(
                      suffixIcon,
                    ),
                  )
                : null,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
