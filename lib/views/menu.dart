// import 'package:flutter/material.dart';
// import 'package:vee_app/widget/widget.dart';

// final Color backgroundcolor = Color(0xFF4A4A58);

// class MenuPage extends StatefulWidget {
//   @override
//   _MenuPageState createState() => _MenuPageState();
// }

// class _MenuPageState extends State<MenuPage> {
//   bool isCollapsed = true;

//   double screenWidth, screenHeight;

//   final Duration duration = const Duration(milliseconds: 300);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     screenHeight = size.height;
//     screenWidth = size.width;
//     return Scaffold(
//         backgroundColor: backgroundcolor,
//         body: Stack(
//           children: [
//             menu(context),
//             dashboard(context),
//           ],
//         ));
//   }
// }

// Widget menu(context) {
//   return Padding(
//     padding: const EdgeInsets.only(left: 16.0),
//     child: Align(
//       alignment: Alignment.centerLeft,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Profile",
//             style: TextStyle(color: Colors.white, fontSize: 20.0),
//           ),
//           SizedBox(height: 10),
//           Text(
//             "Messages",
//             style: TextStyle(color: Colors.white, fontSize: 20.0),
//           ),
//           SizedBox(height: 10),
//           Text(
//             "Notifications",
//             style: TextStyle(color: Colors.white, fontSize: 20.0),
//           ),
//           SizedBox(height: 10),
//           Text(
//             "Settings",
//             style: TextStyle(color: Colors.white, fontSize: 20.0),
//           )
//         ],
//       ),
//     ),
//   );
// }

// Widget dashboard(context) {
//   num screenHeight;
//   num screenWidth;
//   var duration;
//   return AnimatedPositioned(
//     duration: duration,
//     top: 0.2 * screenHeight,
//     bottom: 0.2 * screenWidth,
//     left: 0.6 * screenWidth,
//     right: -0.4 * screenWidth,
//     child: Material(
//       elevation: 8,
//       color: backgroundcolor,
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               InkWell(
//                 child: Icon(Icons.menu, color: Colors.white),
//                 onTap: () {
//                   setState(() {
//                     if (isCollapsed)
//                     isCollapsed = !isCollapsed;
//                   });
//                 },
//               ),
//               brandName(),
//               Icon(Icons.settings, color: Colors.white),
//             ],
//           )
//         ],
//       ),
//     ),
//   );
// }
