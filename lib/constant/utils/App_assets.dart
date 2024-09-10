// ignore_for_file: file_names, constant_identifier_names

import 'package:flutter/material.dart';

const String imagePath = 'assets/images';
const String lottiePath = 'assets/lottie';
const String svgPath = 'assets/svg';


class AppImageAssets{
  const AppImageAssets._();
  static const AppImageAssets _instance = AppImageAssets._();
  factory AppImageAssets()=>_instance;

  static const String splash = '$imagePath/logoo.png';
  static const String profile = '$imagePath/profile.png';
  static const String visa = '$imagePath/Visa-Logo.png';
  static const String salad = '$imagePath/salad.png';
  static const String burger = '$imagePath/burger.png';
  static const String bread = '$imagePath/bread.png';
  static const String dessert = '$imagePath/dessert.png';
  static const String drink = '$imagePath/drink.png';
  static const String meat = '$imagePath/meat.png';
  static const String Noodles = '$imagePath/Noodles.png';
  static const String pizza = '$imagePath/pizza.png';
  static const String vegetable = '$imagePath/vegetable.png';
  static const String mastercard = '$imagePath/mastercard-logoo.png';
  static const String welcome_image = '$imagePath/welcome_image.png';
  static const String appStart = '$imagePath/app_start.png';
  static const String facebook = '$imagePath/facebook.png';
  static const String google = '$imagePath/google.png';
  static const String apple = '$imagePath/apple.png';
 }
//
// class AppSvgAssets {
//   const AppSvgAssets._();
//   static const AppSvgAssets _instance = AppSvgAssets._();
//   factory AppSvgAssets()=> _instance;
//
//   static const String profile = '$svgPath/profile.svg';
//    static const String book = '$svgPath/book.svg';
//   static const String dr = '$svgPath/dr.svg';
//   static const String lesson = '$svgPath/lesson.svg';
//
// }

class AppLottieAssets{
  const AppLottieAssets._();
  static const AppLottieAssets _instance = AppLottieAssets._();
  factory AppLottieAssets()=>_instance;

  static const String onBoarding_delivery_3 = '$lottiePath/onBoarding_delivery_3.json';
  static const String credit_card_2 = '$lottiePath/credit-card_2.json';
  static const String dinner_1 = '$lottiePath/dinner_1.json';

  static const String searchEmpty = '$lottiePath/search-empty.json';

}
class MyFlutterApp{
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  static const IconData pill = IconData(0xea60, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}