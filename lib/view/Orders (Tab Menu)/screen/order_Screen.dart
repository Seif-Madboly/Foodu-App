// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constant/utils/App_assets.dart';
import 'active_Screen.dart';
import 'cancelled_Screen.dart';
import 'completed_Screen.dart';

class orders_Screen extends StatelessWidget {
  const orders_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(AppImageAssets.splash),
                backgroundColor: Colors.transparent,
              ),
              Text(
                "Orders",
                style: GoogleFonts.openSans(
                    letterSpacing: 0.7, fontSize: AppDimensions.font20(context)),
              ),
            ],
          ),
          bottom: TabBar(
            indicatorWeight: 3,
            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.green,
            labelStyle:  GoogleFonts.roboto(
                letterSpacing: 0.7,
              fontSize: AppDimensions.font16(context)
            ),
            tabs: const [
              Tab(text: 'Active'),
              Tab(text: 'Completed'),
              Tab(text: 'Cancelled'),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon:   Icon(
                Icons.search,
                size:AppDimensions.iconSize38(context) ,
              ),
            )
          ],
        ),
        body:   TabBarView(
          children: [
            const active_Screen(),
            completed_Screen(),
            const cancelled_Screen()
          ],
        ),
      ),
    );
  }


}
