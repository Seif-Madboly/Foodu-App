import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/utils/App_assets.dart';

// ignore: camel_case_types
class Custom_AppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? imagePath;
  final VoidCallback? onSearchPressed;
  final VoidCallback? onMorePressed;
  final List<Widget>? action;
  final PreferredSizeWidget? bottom;

  const Custom_AppBar({
    Key? key,
    required this.title,
    this.imagePath,
    this.onSearchPressed,
    this.onMorePressed,
    this.action,
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(AppImageAssets.splash),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(width: AppDimensions.width8(context)),
            // Add some spacing between the avatar and text
            Text(
              title,
              style:  GoogleFonts.openSans(
                  letterSpacing: 0.7, fontSize: AppDimensions.font20(context)),
            ),
          ],
        ),
        bottom: bottom,
        actions: action);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
