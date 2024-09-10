import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_text.dart';

class Custom_Transaction_Widget extends StatelessWidget {
  const Custom_Transaction_Widget({Key? key}) : super(key: key);
final index = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
                radius: AppDimensions.radius30(context),
                backgroundImage: const AssetImage('assets/images/food.png')),
          ],
        ),
        SizedBox(
          width: AppDimensions.width20(context),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Big Garden Salad',
                textStyle: GoogleFonts.openSans(
                  fontSize: AppDimensions.font16(context),
                  fontWeight: FontWeight.bold,
                ),
                textOverflow: TextOverflow.ellipsis,
              ),

              Row(
                children: [
                  Expanded(
                    child: CustomText(
                      text:  'Dec 15 2025 | 16:00 PM',
                      textStyle: GoogleFonts.openSans(
                        fontSize: AppDimensions.font12(context),
                        color: Colors.black54
                      ),
                      maxLine: 1,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Column(
                    children: [
                      CustomText(
                        text: '-\$21.20',
                        textStyle: GoogleFonts.openSans(
                            fontSize: AppDimensions.font16(context),
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                        ),
                      ),
                      const Text("Order")
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}

/*
* Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
                radius: AppDimensions.radius30(context),
                backgroundImage: const AssetImage('assets/images/food.png')),
          ],
        ),
        SizedBox(
          width: AppDimensions.width20(context),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Big Garden Salad',
                textStyle:GoogleFonts.roboto(
                  fontSize: AppDimensions.font16(context),
                  fontWeight: FontWeight.bold,

                ),
                textOverflow: TextOverflow.ellipsis,
              ),

              Row(
                children: [
                  Expanded(
                    child: CustomText(
                      text:  'Dec 15 2025 | 16:00 PM',
                      textStyle:GoogleFonts.roboto(
                        fontSize: AppDimensions.font12(context),
                      ),
                      maxLine: 1,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Column(
                    children: [
                      CustomText(
                        text: '-\$21.20',
                        textStyle:GoogleFonts.roboto(
                            fontSize: AppDimensions.font16(context),
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                        ),
                      ),
                      const Text("Order")
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),



      ],
    );*/


//
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// CustomText(
// text: 'Big Garden Salad',
// textStyle: GoogleFonts.roboto(
// fontSize: AppDimensions.font16(context),
// fontWeight: FontWeight.bold,
// ),
// textOverflow: TextOverflow.ellipsis,
// ),
// Row(
// children: [
// Expanded(
// child: CustomText(
// text: 'Dec 15 2025 | 16:00 PM',
// textStyle: GoogleFonts.roboto(
// fontSize: AppDimensions.font12(context),
// ),
// maxLine: 1,
// textOverflow: TextOverflow.ellipsis,
// ),
// ),
// Column(
// children: [
// CustomText(
// text: '-\$21.20 ${index + 10}',
// textStyle: GoogleFonts.roboto(
// fontSize: AppDimensions.font16(context),
// fontWeight: FontWeight.bold,
// color: Colors.red),
// ),
// const Text("Order")
// ],
// ),
// ],
// ),
// ],
// ),
/*
* Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
               text: 'Big Garden Salad',
                textStyle:GoogleFonts.roboto(
                  fontSize: AppDimensions.font16(context),
                  fontWeight: FontWeight.bold,

                ),
                 textOverflow: TextOverflow.ellipsis,
              ),

                Row(
                children: [
                    Expanded(
                    child: CustomText(
                     text:  'Dec 15 2025 | 16:00 PM',
                      textStyle:GoogleFonts.roboto(
                          fontSize: AppDimensions.font12(context),
                       ),
                      maxLine: 1,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Column(
                    children: [
                      CustomText(
                       text: '-\$21.20',
                        textStyle:GoogleFonts.roboto(
                          fontSize: AppDimensions.font16(context),
                            fontWeight: FontWeight.bold,
                          color: Colors.red
                        ),
                      ),
                      const Text("Order")
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),*/
