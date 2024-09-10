import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/utils/App_assets.dart';
import 'welcome_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final spinkit = const SpinKitCircle(
    color: Colors.green,
    size: 70.0,
    duration: Duration(seconds: 10),
  );

  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const welcome_Screen(),
        ),
      ),
    );
    super.initState();
  }

  final double baseWidth = 375.0; // base width of the design

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage(AppImageAssets.splash,),
                    backgroundColor: Colors.transparent,
                    radius: AppDimensions.radius60(context),
                  ),

                  // Image.asset(
                  //   AppImageAssets.splash,
                  //   width: size.width * 0.45,
                  //  ),
                  const SizedBox(width: 0), // Explicitly set to 0 to remove any gap
                  Text(
                    "Foodu",
                    style: GoogleFonts.roboto(
                      fontSize: AppDimensions.font50(context),
                      fontWeight: FontWeight.bold,
                      height: 1.0, // Reduce line height
                      letterSpacing: 0.0, // Reduce letter spacing to bring text closer
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: spinkit,
            ),
          ],
        ),
      ),
    );
  }
}
