import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:foodu_food_delivery_app_ui/constant/utils/App_assets.dart';

import '../../../constant/utils/DynamicDimensions.dart';


final List<Category> categories = [
  Category(name: 'Burger', imagePath: AppImageAssets.burger),
  Category(name: 'Pizza', imagePath: AppImageAssets.pizza),
  Category(name: 'Noodles', imagePath: AppImageAssets.Noodles),
  Category(name: 'Meat', imagePath: AppImageAssets.meat),
  Category(name: 'vegetable', imagePath: AppImageAssets.vegetable),
  Category(name: 'dessert', imagePath: AppImageAssets.dessert),
  Category(name: 'drink', imagePath: AppImageAssets.drink),
  Category(name: 'Bread', imagePath: AppImageAssets.bread),


];
class Category {
  final String name;
  final String imagePath;

  Category({required this.name, required this.imagePath});
}

class CategoryCard extends StatelessWidget {
  final Category category;
   final String? imagePath;
  final double? imageSize;

  final double fontSize;

  CategoryCard({
    required this.category,
     required this.fontSize,

    this.imagePath,   this.imageSize,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),      child: InkWell(
        onTap: () {
          // Handle category tap
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset(
               category.imagePath,
               width: imageSize,
               height: imageSize,
               fit: BoxFit.contain,),
            SizedBox(height: DynamicDimensions.height(context, 0.01)),
            Text(
              category.name,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ) ;
  }
}

/*
* Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          // Handle category tap
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              category.icon,
              size: iconSize,
              color: Colors.blueAccent,
            ),
            SizedBox(height: DynamicDimensions.height(context, 0.01)),
            Text(
              category.name,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    )*/
/*
Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Image.asset(
assetPath!,
height: 50,
width: 50,
),
SizedBox(height: 8),
Text(name!,

overflow: TextOverflow.ellipsis,
),
],
)*/
