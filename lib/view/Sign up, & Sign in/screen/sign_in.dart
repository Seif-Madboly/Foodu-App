import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/App_assets.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:foodu_food_delivery_app_ui/view/widgets/custom_text.dart';
import 'package:get/get.dart';

import '../../../config/routes/app_router.dart';
import '../Controller/loginController.dart';
import '../../widgets/custom_Button.dart';
import '../widget/phoneFormField_widget.dart';

class sign_in extends StatelessWidget {
  final TextEditingController _phoneNumberController = TextEditingController();
  final LoginController controller = Get.put(LoginController());

  sign_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
          ),
          onPressed: ()=>Get.offAllNamed(Routes.lets_you_in)
          ,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage(AppImageAssets.splash)),
            SizedBox(
              height: AppDimensions.height40(context),
            ),
            Text(
              "Login to Your Account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: AppDimensions.font26(context),
              ),
            ),
            SizedBox(
              height: AppDimensions.height40(context),
            ),
            phoneFormField(
              controller: _phoneNumberController,
              selectCountry: controller.selectCountry,
              onPhoneNumberChanged: (value) {
                controller.updatePhoneNumber(value);
              },
            ),
            SizedBox(
              height: AppDimensions.height20(context),
            ),
            Obx(
              () => Row(
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
              ),
            ),
            CustomButton(
              text: 'Sign up',
              onPress: () => Get.offAllNamed(Routes.otp_Screen),
            ),
          ],
        ),
      ),
    );
  }
}
