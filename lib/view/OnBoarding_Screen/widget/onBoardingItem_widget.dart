import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:lottie/lottie.dart';

import '../../../model/BoardingModel.dart';

class onBoardingItem extends StatelessWidget {
  final BoardingModel model;

  const onBoardingItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: LottieBuilder.asset("${model.image}"),
        ),
          SizedBox(height:AppDimensions.height30(context),
        ),
        Center(
          child: Text(
            "${model.title}",
            style: TextStyle(
              color: Colors.green,
              fontSize:AppDimensions.font40(context),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
    const SizedBox(height:30),
        Center(
          child: Text(
            "${model.body}",
            style:  TextStyle(
              fontSize:AppDimensions.font20(context),
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height:AppDimensions.height15(context)),
      ],
    );
  }
}
