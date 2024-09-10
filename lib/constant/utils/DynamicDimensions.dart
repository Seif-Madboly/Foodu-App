  // ignore_for_file: file_names

import 'package:flutter/material.dart';

class DynamicDimensions {
  static double height(BuildContext context, double height) {
    return MediaQuery.of(context).size.height * height;
  }

  static double width(BuildContext context, double width) {
    return MediaQuery.of(context).size.width * width;
  }

  static double fontSize(BuildContext context, double size) {
    return MediaQuery.of(context).size.width * size;
  }

  static double radius(BuildContext context, double radius) {
    return MediaQuery.of(context).size.width * radius;
  }

  static double imageSize(BuildContext context, double size){
    return MediaQuery.of(context).size.width * size;
  }
}
