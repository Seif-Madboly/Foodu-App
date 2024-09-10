import 'package:flutter/material.dart';

import 'dimensions.dart';
import 'media_query_values.dart';
import 'values_managers.dart';

class AppConstant {
  const AppConstant._();
  static const AppConstant _instance = AppConstant._();
  factory AppConstant() => _instance;

  static Widget horizontalDivider() => const Divider(color: Colors.transparent);
  static Widget verticalDivider() =>
      const VerticalDivider(color: Colors.transparent);

  static ButtonStyle customElevatedButtonStyle(BuildContext context,
      {Color? color}) {
    return ElevatedButton.styleFrom(
      backgroundColor: color,
      fixedSize: Size(
        context.width / AppSize.s1_5,
        context.isPortrait ? context.height / 20 : context.height / 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppDimensions.radius20(context),
        ),
      ),
    );
  }

  static double defaultPadding(BuildContext context) {
    return AppDimensions.width30(context) * AppSize.s1_2;
  }

  static double defaultBorderRadius(BuildContext context) {
    if (context.isPortrait) {
      return AppDimensions.width20(context);
    } else {
      return AppDimensions.width10(context);
    }
  }

  static const int defaultAnimationDuration = 200;
}
