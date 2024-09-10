// ignore: file_names
import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;

  const OtpInput(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.height60(context),
      width: AppDimensions.width50(context),
      child: TextField(
        autofocus: true,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration:   InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            counterText: '',
            hintStyle:  TextStyle(color: Colors.black,fontSize: AppDimensions.font20(context))),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}