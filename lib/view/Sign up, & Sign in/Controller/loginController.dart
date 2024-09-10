// ignore_for_file: file_names

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var value = false.obs;
  var isChecked = false.obs;
  var phoneNumber = ''.obs;
  TextEditingController fullNameController = TextEditingController();
  TextEditingController oTpController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  var otp = ''.obs;
 final TextEditingController fieldOne = TextEditingController();

 final TextEditingController fieldTwo = TextEditingController();

final TextEditingController fieldThree = TextEditingController();

 final TextEditingController fieldFour = TextEditingController();



  final selectCountry = Country(
    phoneCode: '1',
    countryCode: 'US',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'United States',
    example: '123 456 7890',
    displayName: 'United States',
    displayNameNoCountryCode: 'United States',
    e164Key: '',
  ).obs;

  void toggleRememberMe() {
    isChecked.value = !isChecked.value;
  }

  void updatePhoneNumber(String number) {
    phoneNumber.value = number;
  }

  void updateCountry(Country country) {
    selectCountry.value = country;
  }
}
