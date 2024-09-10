// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:get/get.dart';

import '../../../../controller/homeController.dart';
import '../../../E-Wallet/screen/wallet_screen.dart';
import '../../../Orders (Tab Menu)/screen/order_Screen.dart';
import '../../../Profile & Settings/screen/profile_Screen.dart';
import '../home/home.dart';

class appLayout extends StatelessWidget {
  appLayout({Key? key}) : super(key: key);

  final List<String> titles = [
    'Home',
    'Orders',
    'Message',
    'E-Wallet',
    'Profile'
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(), // Initialize the controller
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: [
              home_Screen(),
              const orders_Screen(),
              WalletScreen(),
              profile_Screen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            // Update tab index on tap
            currentIndex: controller.tabIndex,
            selectedItemColor:
                Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
            unselectedItemColor:
                Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home_filled,
                  size: AppDimensions.iconSize24(context),
                ),
              ),
              BottomNavigationBarItem(
                label: "Orders",
                icon: Icon(
                  Icons.content_paste,
                  size: AppDimensions.iconSize24(context),
                ),
              ),
              BottomNavigationBarItem(
                label: "E-Wallet",
                icon: Icon(
                  Icons.account_balance_wallet,
                  size: AppDimensions.iconSize24(context),
                ),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(
                  Icons.account_circle,
                  size: AppDimensions.iconSize24(context),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
