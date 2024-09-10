import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodu_food_delivery_app_ui/config/routes/app_router.dart';
import 'package:get/get.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            titleSpacing: 20.0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            toolbarTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            elevation: 20.0,
            backgroundColor: Colors.white,
          ),
          textTheme: const TextTheme(
              labelLarge: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
              bodyLarge: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              bodyMedium: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
              labelSmall: TextStyle(fontSize: 12, color: Colors.grey)),
        ),
      onGenerateRoute:AppRoutes.generateRoute,
      initialRoute: Routes.splash,
      //First screen is the Splash
    );
    //   initialRoute: "/",
    //   getPages: [
    //   GetPage(
    //   name: "/",
    //   page: ()=>ex(),
    //   binding:  Binding(),
    //   )
    //   ]
    // );
  }
}

