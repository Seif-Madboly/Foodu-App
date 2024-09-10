// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/custom_Completed_Card.dart';


// ignore: camel_case_types
// class completed_Screen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return   Scaffold(
//         body:Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ListView.separated(
//             physics: const NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             itemBuilder: (BuildContext context, int index) {
//               custom_Completed_Card(
//                 restaurantName: 'Restaurant Name',
//                 imagePath: 'assets/images/food.png',
//                 itemsInfo: '2 items | 2.7 km',
//                 price: '\$22.00 ${index +10}',
//                 status: 'Completed',
//               );
//             },
//             separatorBuilder: (context, index) =>   SizedBox(
//               height: AppDimensions.height20(context),
//             ),
//             itemCount: 5,
//
//           ),
//         ),
//     );
//   }
// }

class completed_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example data
    final List<Map<String, String>> orders = [
      {
        'restaurantName': 'Zero Zero Noodls',
        'itemsInfo': '2 items | 2.7 km',
        'price': '\$22.00',
        'imagePath': 'assets/images/food.png',
      },
      {
        'restaurantName': 'Eats Meets West',
        'itemsInfo': '3 items | 5.2 km',
        'price': '\$35.00',
        'imagePath': 'assets/images/food.png',
      },
      // Add more orders as needed
    ];
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
      height:0.1,),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return custom_Completed_Card(
            restaurantName: order['restaurantName']!,
            itemsInfo: order['itemsInfo']!,
            price: order['price']!,
            imagePath: order['imagePath']!,
            onLeaveReview: () {
              // Handle leave review action
            },
            onOrderAgain: () {
              // Handle order again action
            },
          );
        },
      ),
    );
  }
}
