// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import '../../view/Account Setup/screen/editProfile_screen.dart';
import '../../view/E-Wallet/screen/FullTransactionHistory_Screen.dart';
import '../../view/E-Wallet/screen/wallet_screen.dart';
import '../../view/Home & Action Menu/screen/home/home.dart';
import '../../view/Home & Action Menu/screen/layout/layout.dart';
import '../../view/OnBoarding_Screen/screen/splash_screen.dart';
import '../../view/OnBoarding_Screen/screen/walkthrough_screen.dart';
import '../../view/OnBoarding_Screen/screen/welcome_screen.dart';
import '../../view/Orders (Tab Menu)/screen/active_Screen.dart';
import '../../view/Orders (Tab Menu)/screen/cancelled_Screen.dart';
import '../../view/Orders (Tab Menu)/screen/completed_Screen.dart';
import '../../view/Orders (Tab Menu)/screen/order_Screen.dart';
 import '../../view/Profile & Settings/screen/Profile_Settings_Screen.dart';
import '../../view/Profile & Settings/screen/profile_Screen.dart';
import '../../view/Sign up, & Sign in/screen/createAccount_screen.dart';
import '../../view/Sign up, & Sign in/screen/lets_you_in.dart';
 import '../../view/Sign up, & Sign in/screen/otpScreen.dart';
import '../../view/Sign up, & Sign in/screen/sign_in.dart';


class Routes {
  //-------------------OnBoarding_Screen----------
  static const String splash = "/ "; //1
  static const String welcome_Screen = '/welcome_Screen';//2
  static const String walkthrough_Screen = '/walkthrough_Screen';//3

  //----------------Sign up, & Sign in----------------
  static const String lets_you_in = '/lets_you_in';//4
  static const String sign_in = '/sign_in';//5
  static const String createAccount_Screen = '/createAccount_Screen';//6
  static const String otp_Screen = '/otp_Screen';//7

  //--------------------Account Setup---------------
  static const String editProfile_Screen = "/editProfile_Screen";//8

  //------------------------appLayout---------------
  static const String appLayout = "/appLayout";//9

  //---------------home_Screen-------------
  static const String home_Screen = "/home_Screen";//10

  //----------------Orders (Tab Menu)-----------------------
  static const String orders_Screen = "/orders_Screen";//11
  static const String active_Screen = "/active_Screen";//12
  static const String completed_Screen = "/completed_Screen";//13
  static const String cancelled_Screen = "/cancelled_Screen";//14

  //-------------------Profile & Settings-----------------------
  static const String profile_Screen = "/profile_Screen";//15
  static const String profile_Settings_Screen = "/profile_Settings_Screen";//16

  //-------------------------E-Wallet---------------------
  static const String wallet_Screen = "/wallet_Screen";//17
  static const String fullTransactionHistory_Screen = "/fullTransactionHistory_Screen";//18


 }

class AppRoutes {
  static MaterialPageRoute? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const Splash(),
        );

      case Routes.welcome_Screen:
        return MaterialPageRoute(
          builder: (_) => const welcome_Screen(),
        );

        case Routes.walkthrough_Screen:
        return MaterialPageRoute(
          builder: (_) => walkthrough_Screen(),
        );

      case Routes.lets_you_in:
        return MaterialPageRoute(
          builder: (_) => const lets_you_in(),
        );

      case Routes.sign_in:
        return MaterialPageRoute(
          builder: (_) => sign_in(),
        );

      case Routes.createAccount_Screen:
        return MaterialPageRoute(
          builder: (_) => createAccount_Screen(),
        );

      case Routes.otp_Screen:
        return MaterialPageRoute(
          builder: (_) => otp_Screen(),
        );

      case Routes.editProfile_Screen:
        return MaterialPageRoute(
          builder: (_) => editProfile_Screen(),
        );

        case Routes.appLayout:
        return MaterialPageRoute(
          builder: (_) => appLayout(),
        );
      case Routes.orders_Screen:
        return MaterialPageRoute(
          builder: (_) => const orders_Screen(),
        );

        case Routes.active_Screen:
        return MaterialPageRoute(
          builder: (_) => const active_Screen(),
        );

        case Routes.completed_Screen:
        return MaterialPageRoute(
          builder: (_) =>  completed_Screen(),
        );

        case Routes.cancelled_Screen:
        return MaterialPageRoute(
          builder: (_) => const cancelled_Screen(),
        );

      case Routes.profile_Screen:
        return MaterialPageRoute(
          builder: (_) =>  profile_Screen(),
        );

      case Routes.profile_Settings_Screen:
        return MaterialPageRoute(
          builder: (_) =>  profile_Settings_Screen(),
        );

      case Routes.wallet_Screen:
        return MaterialPageRoute(
          builder: (_) =>   WalletScreen(),
        );

      case Routes.fullTransactionHistory_Screen:
        return MaterialPageRoute(
          builder: (_) =>   fullTransactionHistory_Screen(),
        );


      case Routes.home_Screen:
        return MaterialPageRoute(
          builder: (_) =>  home_Screen(),
        );




    }
    return null;
  }
}



