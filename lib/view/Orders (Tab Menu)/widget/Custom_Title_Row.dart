import 'package:flutter/material.dart';

import '../../../constant/utils/dimensions.dart';

class custom_TitleRow extends StatelessWidget {
 final String name;
 final String? emoji;

  const custom_TitleRow({Key? key, required this.name,  this.emoji}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: AppDimensions.font20(context),
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: emoji,
                  style: TextStyle(
                      fontSize: AppDimensions.font20(context)))
            ],
          ),
        ),
        TextButton(
          child: Text(
            "See All",
            style: TextStyle(
              fontSize: AppDimensions.font16(context),
              color: Colors.green,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
