import 'package:flutter/material.dart';

import 'media_query_values.dart';

class AppDimensions {
  const AppDimensions._();

  static const AppDimensions _instance = AppDimensions._();

  factory AppDimensions() => _instance;

  static double screenHeight(BuildContext context) => context.height;
  static double screenWidth(BuildContext context) => context.width;
  static bool isPortrait(BuildContext context) => context.isPortrait;

  //! Dynamic Height padding and margin
  static double height5(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 168.8
      : screenHeight(context) / 150;

  static double height8(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 105.5
      : screenHeight(context) / 93.75;

  static double height10(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 84.4
      : screenHeight(context) / 75;

  static double height15(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 56.27
      : screenHeight(context) / 50;

  static double height20(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 42.2
      : screenHeight(context) / 25;

  static double height30(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 28.13
      : screenHeight(context) / 25;

  static double height32(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 26.25
      : screenHeight(context) / 22.5;

  static double height35(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 24.0
      : screenHeight(context) / 20.6;

  static double height40(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 21.0
      : screenHeight(context) / 18.0;

  static double height45(BuildContext context)=> context.isPortrait
        ? screenHeight(context) / 18.76
        : screenHeight(context) / 10;

  static double height50(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 16.0
      : screenHeight(context) / 14.0;

  static double height60(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 13.33  // 60 in portrait mode
      : screenHeight(context) / 11.67; // Adjusted value for landscape


  //! Dynamic Width padding and margin
  static double width2(BuildContext context) => context.isPortrait
      ? screenWidth(context) / 422
      : screenWidth(context) / 400;

  static double width5(BuildContext context) => context.isPortrait
      ? screenWidth(context) / 168.8  // Adjust this value as needed for portrait mode
      : screenWidth(context) / 160;   // Adjust this value as needed for landscape mode

  static double width8(BuildContext context) => context.isPortrait
      ? screenWidth(context) / 105.5 // Calculate width for portrait mode
      : screenWidth(context) / 100;  // Calculate width for landscape mode

  static double width10(BuildContext context) => context.isPortrait
      ? screenWidth(context) / 84.4
      : screenWidth(context) / 80;

  static double width15(BuildContext context) {
    if (context.isPortrait) {
      return screenWidth(context) / 75;
    } else {
      return screenWidth(context) / 60;
    }
  }

  static double width20(BuildContext context) {
    return context.isPortrait
        ? screenWidth(context) / 42.2
        : screenWidth(context) / 30;
  }

  static double width30(BuildContext context) => context.isPortrait
      ? screenWidth(context) / 28.13
      : screenWidth(context) / 40;

  static double width50(BuildContext context) => context.isPortrait
      ? screenWidth(context) / 7.68  // 50 in portrait mode
      : screenWidth(context) / 13.5; // Adjusted value for landscape

  static double width90(BuildContext context) => context.isPortrait
      ? screenWidth(context) / 4.27  // 90 in portrait mode
      : screenWidth(context) / 7.67;

  static double width380(BuildContext context) => context.isPortrait
      ? screenWidth(context) / 1.05
      : screenWidth(context) / 1.5;


  //! Dynamic fonts Size
  static double font50(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 15.0
      : screenHeight(context) / 7.5;

  static double font40(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 18.0
      : screenHeight(context) / 9.0;

  static double font38(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 22.1
      : screenHeight(context) / 10.5;

  static double font35(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 24.0
      : screenHeight(context) / 11.1;

  static double font32(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 24.0
      : screenHeight(context) / 12.0;

  static double font30(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 26.0
      : screenHeight(context) / 13.0;

  static double font26(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 32.46
      : screenHeight(context) / 15;

  static double font23(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 36.7
      : screenHeight(context) / 17;

  static double font20(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 42.2
      : screenHeight(context) / 18;

  static double font18(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 45  // Adjust this value as needed
      : screenHeight(context) / 18; // Adjust this value as needed

  static double font16(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 48
      : screenHeight(context) / 20;

  static double font12(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 52.2
      : screenHeight(context) / 25;

  static double font8(BuildContext context) => context.isPortrait
      ? screenHeight(context) / 78.3  // 8 in portrait mode
      : screenHeight(context) / 37.5; // Adjusted value for landscape

  //! Dynamic borderRadius
  static double radius8(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 105.5
        : screenHeight(context) / 84;
  }


  static double radius15(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 56.27
        : screenHeight(context) / 45;
  }

  static double radius20(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 42.2
        : screenHeight(context) / 35;
  }

  static double radius30(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 28.13
        : screenHeight(context) / 25;
  }

  static double radius50(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 16.88
        : screenHeight(context) / 15;
  }

  static double radius60(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 14.07
        : screenHeight(context) / 12.5;
  }


  //! Dynamic iconSize
  static double iconSize16(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 52.75
        : screenHeight(context) / 40;
  }

  static double iconSize24(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 35.17
        : screenHeight(context) / 15;
  }

  static double iconSize30(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 28.17
        : screenHeight(context) / 12.5;
  }

  static double iconSize38(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 22.2
        : screenHeight(context) / 10;
  }

  static double iconSize40(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 21.96
        : screenHeight(context) / 9.23;
  }

  //! Dynamic Dimension
  static double biggerAppBarHeight(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 5
        : screenHeight(context) / 6;
  }

  static double smallerAppBarExpandedHeight(BuildContext context) {
    return context.isPortrait ? biggerAppBarHeight(context) / 1.5 : 0.0;
  }

  static double spaceBetweenAppBarTitleAndFlexible(BuildContext context) {
    return context.isPortrait
        ? biggerAppBarHeight(context) / 1.7
        : biggerAppBarHeight(context) / 1.8;
  }

  //! Splash Screen
  static double lottieImageHeight(BuildContext context) {
    return context.isPortrait
        ? screenHeight(context) / 2
        : screenHeight(context) / 1.25;
  }

  //! Login Screen
  static Size signInButtonHeight(BuildContext context) {
    return context.isPortrait
        ? Size(
            context.width,
            context.height / 15,
          )
        : Size(
            context.width,
            context.height / 7.5,
          );
  }

  static double sizeBoxHeight(BuildContext context) {
    return context.isPortrait ? screenHeight(context) / 8 : 0.0;
  }

  //! Check Your Mail
  static double mailLottieHeight(BuildContext context) {
    return context.isPortrait ? screenHeight(context) / 6 : 0.0;
  }

  //! Assignment Screen
  static double emptyLottieHeight(BuildContext context) {
    return isPortrait(context) ? screenHeight(context) / 2 : 0.0;
  }

  static double assignmentItemImageHeight(BuildContext context) {
    return isPortrait(context) ? screenHeight(context) / 9 : 0.0;
  }

  static double assignmentItemImageWidth(BuildContext context) {
    return isPortrait(context) ? screenWidth(context) / 4.5 : 0.0;
  }

  //! Subject Screen
  static double subjectItemHeight(BuildContext context) {
    return isPortrait(context) ? context.height / 10 : 0.0;
  }

  static double subjectItemWidth(BuildContext context) {
    return isPortrait(context) ? context.width / 5 : 0.0;
  }
}
