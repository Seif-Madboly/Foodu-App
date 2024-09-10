import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/utils/dimensions.dart';
import '../../widgets/custom_text.dart';

class fullTransactionHistory_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Transaction History",
          style: GoogleFonts.openSans(),
        ),

      ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: AppDimensions.radius30(context),
                  backgroundImage: const AssetImage('assets/images/food.png'),
                ),
                SizedBox(width: AppDimensions.width20(context)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Transaction ${index + 1}',
                        textStyle:  GoogleFonts.openSans(
                          fontSize: AppDimensions.font16(context),
                          fontWeight: FontWeight.bold,
                        ),
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      CustomText(
                        text: 'Dec 15 2025 | 16:00 PM',
                        textStyle:  GoogleFonts.openSans(
                          fontSize: AppDimensions.font12(context),
                          color: Colors.black54,
                        ),
                        maxLine: 1,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: AppDimensions.width20(context)),
                CustomText(
                  text: '-\$${(index + 1) * 10}.00',
                  textStyle: GoogleFonts.openSans(
                    fontSize: AppDimensions.font16(context),
                    color: Colors.red,
                    fontWeight: FontWeight.bold,

                  ),
                  //textAlign: TextAlign.end, // Align text to the end
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => Divider(
            thickness: 1.0,
            color: Colors.grey.shade300,
          ),
          itemCount: 10, // Assume 50 transactions for example
        ),
      )


    );
  }
}
