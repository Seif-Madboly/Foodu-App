import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  final Alignment alignment;
  final TextStyle? textStyle;
  final TextOverflow? textOverflow;
  final int? maxLine;
  const CustomText({Key? key,
    this.text,
    this.fontSize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.fontWeight,
    this.textStyle,
    this.textOverflow,
    this.maxLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text!,
        style: textStyle ??
            TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
        overflow:textOverflow,
        maxLines: maxLine,
       ),
    );
  }
}
