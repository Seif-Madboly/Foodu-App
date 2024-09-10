// import 'dart:async';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter/material.dart';
//
// class Map_Screen extends StatefulWidget {
//   const Map_Screen({Key? key}) : super(key: key);
//
//   @override
//   State<Map_Screen> createState() => _Map_ScreenState();
// }
//
// class _Map_ScreenState extends State<Map_Screen> {
//
//   final Completer<GoogleMapController> _controller =Completer();
//   static LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
//   static LatLng destination = LatLng(37.33429383, -122.006600055);
//   List<LatLng> polylineCoordinates = [];
//
// //   /void getPlolyPointes ()async{
// //     PolylinePoints polylinePointer = PolylinePoints();
// //
// //     PolylineResult result = await polylinePointer.getRouteBetweenCoordinates(
// //         google_api_key,
// //         PointLatLng(sourceLocation.latitude, sourceLocation.latitude),
// //
// //
// // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Map Location",
//               style: TextStyle(fontSize: 16),
//         ),
//       ),
//       body: GoogleMap(initialCameraPosition: CameraPosition(
//         target: sourceLocation,
//         zoom: 14.5,
//       ),
//         markers: {
//          Marker(markerId:MarkerId("source"),
//         position: sourceLocation,
//         ),
//           Marker(markerId:MarkerId("destination"),
//         position: destination,
//         ),
//
//         },
//       ),
//     );
//   }
// }
