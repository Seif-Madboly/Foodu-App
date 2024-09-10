// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:foodu_food_delivery_app_ui/view/widgets/Custom_AppBar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/routes/app_router.dart';
import '../../../constant/utils/dimensions.dart';
import '../../Account Setup/controller/Profile_Controller.dart';
import '../../widgets/custom_text.dart';
import '../widget/Custom_Transaction_Widget.dart';

class WalletScreen extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  bool isCvvFocused = false;

  WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Custom_AppBar(
        title: "E-Wallet",

      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.green, Colors.teal],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CreditCardWidget(
                    cardNumber: '1234 5678 9012 3456',
                    // Valid dummy card number
                    expiryDate: '12/34',
                    cardHolderName: 'CARD HOLDER',
                    cvvCode: "123",
                    // Valid dummy CVV code
                    showBackView: isCvvFocused,
                    glassmorphismConfig: Glassmorphism(
                      blurX: 10.0,
                      blurY: 10.0,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Colors.green.withAlpha(20),
                          Colors.teal.withAlpha(20),
                        ],
                        stops: const <double>[
                          1.3,
                          0.9,
                        ],
                      ),
                    ),
                    enableFloatingCard: true,
                    floatingConfig: const FloatingConfig(
                      isGlareEnabled: true,
                      isShadowEnabled: true,
                      shadowConfig: FloatingShadowConfig(),
                    ),
                    labelValidThru: 'VALID\nTHRU',
                    obscureCardNumber: true,
                    obscureInitialCardNumber: false,
                    obscureCardCvv: true,
                    cardBgColor: Colors.transparent,
                    cardType: CardType.mastercard,
                    isHolderNameVisible: false,
                    height: 200,
                    textStyle: const TextStyle(color: Colors.black),
                    width: MediaQuery.of(context).size.width,
                    isChipVisible: true,
                    isSwipeGestureEnabled: true,
                    animationDuration: const Duration(milliseconds: 500),
                     onCreditCardWidgetChange: (CreditCardBrand) {},
                    padding: 16,
                  ),
                ),
                  SizedBox(
                  height: AppDimensions.height15(context),
                ),
                 CustomText(
                  text: "Transaction History",
                  textStyle:  GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: AppDimensions.font20(context),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.height15(context),
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const Custom_Transaction_Widget(),
                  separatorBuilder: (context, index) =>   SizedBox(
                    height: AppDimensions.height20(context),
                  ),
                  itemCount: 4,
                ),
                // SizedBox(child: Custom_Transaction_Widget()),
                Center(
                  child: TextButton(
                    onPressed: () {
                      // Navigate to the full transaction list
                      Get.toNamed(Routes.fullTransactionHistory_Screen);
                    },
                    child: Text(
                      "See All...",
                      style: TextStyle(
                        fontSize: AppDimensions.font16(context),
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),

                //
                // SizedBox(
                //   height: AppDimensions.height10(context),
                // ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}



// class WalletScreen extends StatelessWidget {
//
//   bool isCvvFocused = false;
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('E-Wallet'),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.search),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.more_horiz),
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CreditCardWidget(
//                   cardNumber: '1234 5678 9012 3456', // Use valid dummy card number
//                   expiryDate: '12/34',
//                   cardHolderName: 'CARD HOLDER',
//                   cvvCode: "123", // Provide a dummy CVV code
//                   showBackView: isCvvFocused,
//                   cardBgColor: Colors.blue,
//                   textStyle: TextStyle(color: Colors.yellow),
//                   animationDuration: Duration(milliseconds: 500),
//                   onCreditCardWidgetChange: (CreditCardBrand) {},
//                 ),
//
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   "Transaction History",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                 ),
//                 const SizedBox(height: 10,),
//                 ListView.separated(
//                   physics: const NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   itemBuilder: (context, index) => buildWalletItem(),
//                   separatorBuilder: (context, index) =>
//                       const SizedBox(
//                         height: 20.0,
//                       ),
//                   itemCount: 15,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
/*
*  // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: Colors.green[200]),
                //   height: size.height * 0.25,
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.all(15.0),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //           children: [
                //             Column(
                //               children: [
                //                 const Text(
                //                   "Andrew Ainsley",
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 22,
                //                       color: Colors.white),
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.all(15),
                //                   child: Column(
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: [
                //                       const Text(
                //                         ".... .... .... 1234",
                //                         style: TextStyle(
                //                             fontWeight: FontWeight.bold,
                //                             fontSize: 18,
                //                             color: Colors.white),
                //                       ),
                //                       const SizedBox(
                //                         height: 20,
                //                       ),
                //                       const Text(
                //                         "Your balance",
                //                         style: TextStyle(
                //                             fontWeight: FontWeight.bold,
                //                             fontSize: 12,
                //                             color: Colors.white),
                //                       ),
                //                       const SizedBox(
                //                         height: 15,
                //                       ),
                //                       const Text(
                //                         "\$100",
                //                         style: TextStyle(
                //                             fontWeight: FontWeight.bold,
                //                             fontSize: 30,
                //                             color: Colors.white),
                //                       )
                //                     ],
                //                   ),
                //                 ),
                //               ],
                //             ),
                //             const SizedBox(
                //               width: 5,
                //             ),
                //             Container(
                //               width: 50,
                //               height: 50,
                //               decoration: const BoxDecoration(
                //                 shape: BoxShape.circle,
                //                 image: DecorationImage(
                //                   image: AssetImage(
                //                     AppImageAssets.visa,
                //                   ),
                //                   fit: BoxFit.fill,
                //                 ),
                //               ),
                //             ),
                //             Container(
                //                 width: 60,
                //                 height: 50,
                //                 decoration: const BoxDecoration(
                //                   shape: BoxShape.circle,
                //                   image: DecorationImage(
                //                     image: AssetImage(
                //                         AppImageAssets.mastercard),
                //                     fit: BoxFit.fitWidth,
                //                   ),
                //                 ))
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),*/
