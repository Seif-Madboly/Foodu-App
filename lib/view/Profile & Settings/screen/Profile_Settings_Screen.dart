import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../config/routes/app_router.dart';
import '../../../constant/utils/dimensions.dart';
import '../../Account Setup/controller/Profile_Controller.dart';
import '../../Sign up, & Sign in/widget/phoneFormField_widget.dart';
import '../../widgets/custom_Button.dart';
import '../widget/Custom_DataTime_Settings.dart';
import '../widget/Custom_GenderDropdown_Settings.dart';
import '../widget/Custom_ProfilePicture_Settings.dart';
import '../widget/Custom_Profile_Settings.dart';

class profile_Settings_Screen extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  profile_Settings_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "Fill Your Profile",
            style: GoogleFonts.abel(fontSize: AppDimensions.font23(context)),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      ),
      body: Form(
        key: profileController.formKey,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: [
              Custom_ProfilePicture_Settings(
                imagePath: profileController.imagePath,
                onEditPressed: () {
                  profileController.changeProfilePicture();
                },
              ),
              SizedBox(
                height: AppDimensions.height20(context),
              ),
              Custom_Profile_Settings(
                labelText: 'Full Name',
                hintText: 'Full Name',
                controller: profileController.fullNameController,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Name";
                  }
                  return null;
                },
                type: TextInputType.name,
                textInputAction: TextInputAction.next,
              ),
              Custom_Profile_Settings(
                labelText: 'Nick Name',
                hintText: 'Nick Name',
                controller: profileController.nickNameController,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Name";
                  }
                  return null;
                },
                type: TextInputType.name,
                textInputAction: TextInputAction.next,
              ),
              Custom_DataTime_Settings(
                controller: profileController.dateController,
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.parse("1995-01-01"),
                    lastDate: DateTime.now(),
                  ).then((value) {
                    if (value != null) {
                      profileController.dateController.text =
                          DateFormat.yMMMd().format(value);
                    }
                  });
                },
                suffix: Icons.date_range_outlined,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Date Must not Be Empty';
                  }
                  return null;
                },
                labelText: 'Date of Birth',
                type: TextInputType.datetime,
              ),
              Custom_Profile_Settings(
                labelText: 'Email',
                hintText: 'Email',
                controller: profileController.emailController,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Email';
                  } else if (!value.contains("@gmail.com")) {
                    return 'Incorrect email format';
                  }
                  return null;
                },
                type: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                suffixIcon: Icons.email,
              ),
              phoneFormField(
                controller: profileController.phoneNumberController,
                selectCountry: profileController.selectCountry,
                onPhoneNumberChanged: (value) {
                  profileController.updatePhoneNumber(value);
                },
              ),
              Custom_GenderDropdown_Settings(
                currentValue: profileController.selectedGender.value,
                options: ['Male', 'Female', 'Other'],
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    profileController.updateGender(newValue);
                  }
                },
              ),
              CustomButton(
                text: 'Continue',
                onPress: ()async {
                  if(profileController.formKey.currentState!.validate()){
                    profileController.isLoading.value = true;
                    profileController.updateFullName(profileController.fullNameController.text);
                    profileController.updatePhoneNumber(profileController.phoneNumberController.text);
                    profileController.updateEmail(profileController.emailController.text);
                  }
                  Get.offAllNamed(Routes.profile_Screen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
