import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/App_assets.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:get/get.dart';

import '../../../config/routes/app_router.dart';
import '../../widgets/custom_Button.dart';
import '../../widgets/custom_button_social.dart';
import '../../widgets/custom_text.dart';

// ignore: camel_case_types
class lets_you_in extends StatelessWidget {
  const lets_you_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          const Image(image: AssetImage(AppImageAssets.appStart)),
          Text(
            "Let's you in",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: AppDimensions.font38(context),
            ),
          ),
          SizedBox(height: AppDimensions.height20(context)),
          CustomButtonSocial(
            text: 'Continue with Facebook',
            onPress: () {
              //controller.signInWithFacebookAccount();
            },
            imageName: AppImageAssets.facebook,
          ),
          SizedBox(height: AppDimensions.height20(context)),
          CustomButtonSocial(
            text: 'Continue with Google',
            onPress: () {
              //controller.googleSignInMethod();
            },
            imageName: AppImageAssets.google,
          ),
          SizedBox(height: AppDimensions.height20(context)),
          CustomButtonSocial(
            text: 'Continue with Apple',
            onPress: () {
              //controller.signInWithFacebookAccount();
            },
            imageName: AppImageAssets.apple,
          ),
          SizedBox(height: AppDimensions.height20(context)),
          const CustomText(
            text: "------------- or -------------",
            alignment: Alignment.center,
          ),
          SizedBox(height: AppDimensions.height30(context)),
          CustomButton(
            text: 'Sign in with Phone Number',
            onPress: () {
              Get.toNamed(Routes.sign_in);
            },
          ),
          SizedBox(height: AppDimensions.height15(context)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'Don\'n have an account?',
                color: Colors.grey.shade600,
              ),
              TextButton(
                onPressed: () => Get.toNamed(
                  Routes.createAccount_Screen,
                ),
                child: CustomText(
                  text: "Sign up",
                  color: Colors.green,
                  fontSize: AppDimensions.font12(context),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
