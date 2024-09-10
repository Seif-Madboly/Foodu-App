import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/App_assets.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:get/get.dart';

import '../../../config/routes/app_router.dart';
import '../Controller/loginController.dart';
import '../../widgets/custom_Button.dart';
import '../../widgets/custom_text.dart';
import '../widget/Custom_CreateAccount_FormField.dart';
import '../widget/phoneFormField_widget.dart';

// ignore: camel_case_types
class createAccount_Screen extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
          ),
          onPressed: ()=>Get.offAllNamed(Routes.lets_you_in)
          ,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                const Image(image: AssetImage(AppImageAssets.splash)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomText(
                    alignment: Alignment.center,
                    text: "Create New Account",
                    fontSize: AppDimensions.font30(context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: AppDimensions.height20(context)),
                phoneFormField(
                  controller: _phoneNumberController,
                  selectCountry: controller.selectCountry,
                  onPhoneNumberChanged: (value) {
                    controller.updatePhoneNumber(value);
                  },
                ),
                Custom_CreateAccount_FormField(
                  labelText: 'Email',
                  hintText: 'Email',
                  controller: controller.fullNameController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Email';
                    } else if (!value.contains("@gmail.com")) {
                      return 'Incorrect email format';
                    }
                    return null;
                  },
                  prefixIcon: const Icon(Icons.email),
                  type: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                Custom_CreateAccount_FormField(
                  labelText: 'Full Name',
                  hintText: 'Full Name',
                  controller: controller.fullNameController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Name";
                    }
                    return null;
                  },
                  prefixIcon: const Icon(Icons.person),
                  type: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(),
                Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: controller.isChecked.value,
                          onChanged: (value) {
                            controller.toggleRememberMe();
                          },
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                        ),
                        const CustomText(
                          text: "Remember me",
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    )),
                CustomButton(
                  text: 'Sign up',
                  onPress: () => Get.offAllNamed(Routes.otp_Screen),
                ),
                SizedBox(height: AppDimensions.height20(context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                        text: 'Already have an account? ', color: Colors.grey),
                    TextButton(
                      onPressed: ()=> Get.toNamed(Routes.sign_in),
                      child: const Text(
                        "Sign in",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
