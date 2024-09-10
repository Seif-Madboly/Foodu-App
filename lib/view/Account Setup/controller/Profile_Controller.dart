// ignore: file_names
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../constant/utils/App_assets.dart';

class ProfileController extends GetxController {
  RxString imagePath = RxString(AppImageAssets.profile);
  TextEditingController emailController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
 TextEditingController nickNameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  var isLoading = false.obs;

  var fullName = ''.obs;
   var email = ''.obs;
  var phoneNumber = ''.obs;
  var selectedGender = 'Male'.obs;

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

  final spinkit = const SpinKitCircle(
    color: Colors.green,
    size: 70.0,
    duration: Duration(seconds: 3),
  );

  void updateFullName(String name) {
    fullName.value = name ;
  }

  void updatePhoneNumber(String phone) {
    phoneNumber.value = phone;
  }

  void updateEmail(String emailAddress) {
    email.value = emailAddress;
  }

  void updateGender(String gender) {
    selectedGender.value = gender;
  }

  void changeProfilePicture() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Update the profile picture with the selected image
      imagePath.value = pickedFile.path;
    }
  }

}
