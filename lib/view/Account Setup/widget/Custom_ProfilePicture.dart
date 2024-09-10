import 'package:flutter/material.dart';
import 'package:get/get.dart';

class custom_ProfilePicture extends StatelessWidget {
  final RxString imagePath;
  final VoidCallback onEditPressed;
  final double? height;
  final double? width;

  custom_ProfilePicture({
    required this.imagePath,
    required this.onEditPressed, this.height, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Obx(() => Container(
            width: width ?? 130,
            height: height?? 130,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 4,
                  color: Theme.of(context).scaffoldBackgroundColor),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 10)),
              ],
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(imagePath.value),
              ),
            ),
          )),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                color: Colors.green,
              ),
              child: IconButton(
                onPressed: onEditPressed,
                icon: Icon(Icons.edit, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
