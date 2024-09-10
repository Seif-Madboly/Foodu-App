// ignore: file_names
import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';

// ignore: camel_case_types
class Custom_CreateAccount_FormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final VoidCallback? onTap;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
 final VoidCallback? suffixPressed;
  final TextStyle? textStyle;

  const Custom_CreateAccount_FormField({
    Key? key,
    required this.controller,
    required this.type,
    this.onTap,
    this.obscureText =  false,
    required this.validator,
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
    this.suffixPressed,
    required this.hintText,
    required this.textInputAction,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.width380(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 13),
        child: TextFormField(
          controller: controller,
          keyboardType: type,
          textInputAction: textInputAction,
          onTap: onTap,
          obscureText: obscureText,
          validator: validator,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: Colors.grey[100],
            labelStyle: TextStyle(color: Colors.grey.shade400),
            labelText: labelText,
            hintText: hintText,
            hintStyle: textStyle?? TextStyle(
                fontSize: AppDimensions.font12(context),
                color: Colors.white
            ),
            prefixIcon:prefixIcon,
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
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
