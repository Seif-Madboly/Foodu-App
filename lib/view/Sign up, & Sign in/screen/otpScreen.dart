// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:foodu_food_delivery_app_ui/view/widgets/custom_text.dart';
import 'package:get/get.dart';
import '../../../config/routes/app_router.dart';
import '../../widgets/custom_Button.dart';
import '../Controller/loginController.dart';
import '../widget/Custom_OTP_widget.dart';

class otp_Screen extends StatelessWidget  {

  final LoginController controller = Get.put(LoginController());

    otp_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f6fb),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: CustomText(
          text: "OTP Code Verification",
          fontSize: AppDimensions.font20(context),
        ),
        leading:IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back_outlined),
          iconSize: AppDimensions.iconSize30(context),
          onPressed: () =>Get.offAllNamed(
          Routes.sign_in,
        ),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Code has been sent",
              fontSize: AppDimensions.font26(context),
              alignment: Alignment.center,
            ),
            SizedBox(height: AppDimensions.height50(context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OtpInput(controller.fieldOne),
                OtpInput(controller.fieldTwo),
                OtpInput(controller.fieldThree),
                OtpInput(controller.fieldFour)
              ],
            ),
            SizedBox(height: AppDimensions.height50(context)),
            CustomButton(
              text: 'Verify',
              onPress: () => Get.offAllNamed(Routes.editProfile_Screen),
            ),
          ],
        ),
        ),
      );

  }
}
