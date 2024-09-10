import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/utils/dimensions.dart';

class Custom_Profile_FormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final String? labelText;
  final String? initialValue;
  final String? hintText;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final FormFieldSetter<String>? onChanged;
  final FormFieldSetter<String>? onSubmitted;
  final IconData? suffixIcon;
  final Widget? prefixIcon;
  final TextInputAction? textInputAction;
  final FontWeight? fontWeight;
  final int? maxline;
  final TextStyle? textStyle;
  final VoidCallback? suffixPressed;

  const Custom_Profile_FormField(
      {Key? key, this.prefixIcon,
      required this.controller,
      this.labelText,
      this.hintText,
      this.obscureText = false,
      required this.validator,
      this.onSaved,
      this.suffixIcon,
      this.type,
      required this.textInputAction,
      this.fontWeight,
      this.maxline,
      this.textStyle,
      this.onSubmitted,
      this.onChanged,
      this.initialValue,
      this.suffixPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.width380(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 13),
        child: TextFormField(
          initialValue: initialValue,
          onChanged: onChanged,
          maxLines: maxline,
          controller: controller,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20)),
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
          ),
          obscureText: obscureText,
          validator: validator,
          onFieldSubmitted: onSubmitted,
          onSaved: onSaved,
          keyboardType: type,
        ),
      ),
    );
  }
}
