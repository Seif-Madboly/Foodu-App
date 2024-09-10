import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

// ignore: camel_case_types
class Custom_PhoneNumber_Formfield extends StatelessWidget {

  final TextEditingController? controller;
  final TextInputType? type;
  final FormFieldValidator<String>? validate;
  final String? labelText;
  final IconData? suffix;
  final String? hintText;

  final Function()? onTap;
  final Widget? suffixWidget;
  final TextStyle? textStyle;
  final FontWeight? fontWeight;

  final TextInputAction? textInputAction;

  const Custom_PhoneNumber_Formfield({Key? key, this.controller, this.type, this.validate, this.labelText, this.suffix, this.onTap, this.suffixWidget, this.textStyle, this.fontWeight, this.textInputAction, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double labelFontSize = screenSize.width < 500 ? 16 : 18;
    final double inputFontSize = screenSize.width < 500 ? 18 : 21;

    return IntlPhoneField(
      controller: controller,
      textInputAction: textInputAction,
      decoration: InputDecoration(
         border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20)
        ),
        hintText: hintText,
        hintStyle: textStyle ?? TextStyle(
            fontSize: inputFontSize,
            fontWeight: FontWeight.normal,
            color: Colors.grey
        ),
        filled: true,
        fillColor: Colors.grey[200],
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: labelFontSize,
          fontWeight: fontWeight,
        ),
      ),
      initialCountryCode: 'EG',
      onChanged: (phone) {
        if (kDebugMode) {
          print(phone.completeNumber);
        }
      },
    );
  }
}
