import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import '../../../constant/utils/App_assets.dart';
import 'walkthrough_screen.dart';

class welcome_Screen extends StatefulWidget {
  const welcome_Screen({Key? key}) : super(key: key);

  @override
  State<welcome_Screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_Screen> {
  var boardingController = PageController();

  bool isLast = false;
  Color backgroundPrimary = const Color(0xFF111015);

  @override
  void initState() {
    Timer(
        const Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>   walkthrough_Screen(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImageAssets.welcome_image),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    backgroundPrimary.withOpacity(0.50),
                    backgroundPrimary.withOpacity(0.75),
                    backgroundPrimary.withOpacity(1.00),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
                decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  backgroundPrimary.withOpacity(0.60),
                  backgroundPrimary.withOpacity(0.40),
                  backgroundPrimary.withOpacity(0.20),
                  Colors.transparent
                ],
              ),
            ),),
          ),
          Positioned(
            bottom: 30.0,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "Welcome to \n Foodu!",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: AppDimensions.font40(context),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: "👋",
                      style:
                          TextStyle(fontSize: AppDimensions.font40(context)))
                ],),),
                SizedBox(height: AppDimensions.height15(context)),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed to eiusmod tempor incididunt ut labore et manga aliqua ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: AppDimensions.font20(context),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


