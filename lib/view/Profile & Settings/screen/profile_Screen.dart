// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:foodu_food_delivery_app_ui/view/widgets/Custom_AppBar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../config/routes/app_router.dart';
import '../../Account Setup/controller/Profile_Controller.dart';
import '../../Account Setup/widget/Custom_ProfilePicture.dart';
import '../../widgets/custom_text.dart';
import '../widget/custom_Acc_List.dart';
import '../widget/custom_dialog_Button.dart';

class profile_Screen extends StatelessWidget {
   final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:const Custom_AppBar(
        title: 'Profile',
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 13, top: 15, right: 10),
        child: ListView(
          children: [
            Row(
              children: [
                custom_ProfilePicture(
                  imagePath: profileController.imagePath,
                  width: 90,
                  height: 90,
                  onEditPressed: () {
                    profileController.changeProfilePicture();
                  },
                ),
                SizedBox(
                  width: AppDimensions.width30(context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text:   profileController.fullName.value,
                      textStyle:  GoogleFonts.openSans(
                        fontSize: AppDimensions.font23(context),
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: AppDimensions.height8(context)),
                    CustomText(
                      text: profileController.phoneNumber.value,
                      textStyle:  GoogleFonts.openSans(
                        fontSize: AppDimensions.font20(context),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: AppDimensions.width30(context),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppDimensions.height10(context)),
            const Divider(thickness: 1),
            const custom_Acc_List(
              text: "My Favorite Restaurants",
              leadingIcon: Icon(Icons.date_range),
            ),
            const custom_Acc_List(
              text: "Special Offers & Promo",
              leadingIcon: Icon(Icons.local_offer),
            ),
            const custom_Acc_List(
              text: "Payment Methods",
              leadingIcon: Icon(Icons.payment),
            ),
            const Divider(thickness: 1),
              custom_Acc_List(
              text: "Profile",
              leadingIcon: const Icon(Icons.person),
              onPressed:()=> Get.toNamed(Routes.profile_Settings_Screen),
            ),
            const custom_Acc_List(
              text: "Notification",
              leadingIcon: Icon(Icons.notifications),
            ),
            const custom_Acc_List(
              text: "Language",
              leadingIcon: Icon(Icons.language),
            ),
            const custom_Acc_List(
              text: "Dark Mode",
              leadingIcon: Icon(Icons.remove_red_eye_outlined),
              trailingIcon: Icon(
                Icons.toggle_off,
                size: 40,
              ),
            ),
            const custom_Acc_List(
              text: "Help Center",
              leadingIcon: Icon(Icons.groups),
            ),
            const custom_Acc_List(
              text: "Invite Friends",
              leadingIcon: Icon(Icons.help_outline),
            ),
              custom_Acc_List(
              text: "Logout",
              colors: Colors.red,
              leadingIcon: const Icon(
                Icons.login,
                color: Colors.red,
              ),
              trailingIcon: const Icon(null),
             onPressed: (){
               Get.dialog(
                 AlertDialog(
                   title: Text(
                     'Logout',
                     style: TextStyle(
                         fontSize: AppDimensions.font23(context),
                         fontWeight: FontWeight.bold,
                         color: Colors.red,
                      ),
                     textAlign: TextAlign.center,
                   ),
                   contentPadding: const EdgeInsets.all(20.0), // Adjust padding for the dialog content
                   content: SizedBox(
                     width: MediaQuery.of(context).size.width * 5.2, // Adjust width as needed
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         const Divider(thickness: 1),
                         Text(
                           'Are you sure you want to log out?',
                           style: GoogleFonts.abel(
                             fontSize: AppDimensions.font16(context),
                           ),
                           textAlign: TextAlign.center,
                         ),
                         SizedBox(height: AppDimensions.height20(context)), // Add spacing if needed
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Center buttons horizontally
                           children: [
                             custom_Dialog_Button(
                               text: "Cancel",
                               textColors: Colors.green[900],
                               onPress: (){
                                 Get.back();
                               },
                               colors:Colors.green[50] ,
                             ),
                             custom_Dialog_Button(
                               text: "Yes,Logout",
                               onPress: (){
                                 Get.offAllNamed(Routes.lets_you_in);
                               },
                             ),
                           ],
                         )
                       ],
                     ),
                   ),
                 ),
                 barrierDismissible: true,
               );

             },
            ),
          ],
        ),
      ),
    );
  }
}
