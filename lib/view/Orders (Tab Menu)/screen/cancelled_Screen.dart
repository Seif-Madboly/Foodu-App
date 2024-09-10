import 'package:flutter/material.dart';

import '../../../constant/utils/DynamicDimensions.dart';
import '../../../constant/utils/dimensions.dart';

class cancelled_Screen extends StatelessWidget {
  const cancelled_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 15,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: AppDimensions.radius50(context),
                      backgroundImage: const AssetImage('assets/images/food.png'),
                    ),
                    SizedBox(
                      width: AppDimensions.width15(context),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bite Me Sandwiches",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: AppDimensions.font16(context),
                            ),
                          ),
                          SizedBox(
                            height: AppDimensions.height10(context),
                          ),
                          Text(
                            "4 items | 2.7km",
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: AppDimensions.font12(context),
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                "\$32.00",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: AppDimensions.width30(context),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red, //color of border
                                    width: AppDimensions.width10(context), //width of border
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                height: AppDimensions.height35(context),
                                width: DynamicDimensions.width(context, 0.29),
                                child: Center(
                                  child: Text(
                                    "Cancelled",
                                    textAlign: TextAlign.center,

                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: AppDimensions.font16(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
