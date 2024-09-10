import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/utils/dimensions.dart';

class phoneFormField extends StatelessWidget {
  final TextEditingController controller;
  final Rx<Country> selectCountry;
  final Function(String) onPhoneNumberChanged;
  final TextStyle? textStyle;

  const phoneFormField (
      {Key? key,
      required this.selectCountry,
      required this.onPhoneNumberChanged,
        required this.controller, this.textStyle})
      : super(key: key);

  void _selectCountry(BuildContext context) {
    showCountryPicker(
        context: context,
        showPhoneCode: true,
        onSelect: (Country country) {
          selectCountry.value = country;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => SizedBox(
      width: AppDimensions.width380(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8,vertical: 13),
        child: TextFormField(
              controller:controller,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                filled: true,
                fillColor: Colors.grey[100],
                prefixIcon: GestureDetector(
                  onTap: () => _selectCountry(context),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'icons/flags/png/${selectCountry.value.countryCode.toLowerCase()}.png',
                          package: 'country_icons',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '+${selectCountry.value.phoneCode}',
                          style: TextStyle(fontSize: AppDimensions.font16(context)),
                        ),
                      ],
                    ),
                  ),
                ),
                hintText: "Phone Number",
                hintStyle: textStyle?? TextStyle(
                    fontSize: AppDimensions.font12(context),
                    color: Colors.grey.shade500
                ),
                border:  const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
      ),
    ));
  }
}
