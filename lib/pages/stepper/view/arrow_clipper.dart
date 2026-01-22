// import 'package:flutter/material.dart';

// class ArrowClipper extends CustomClipper<Path> {
//   final double arrowWidth;
//   final double arrowHeight;
//   final double arrowTipX;

//   ArrowClipper({
//     this.arrowWidth = 15,
//     this.arrowHeight = 30,
//     this.arrowTipX = 1,
//   });

//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     // Start at the top-left corner
//     path.moveTo(0, 0);
//     // Line to top-right edge start (before the arrow indention)
//     path.lineTo(size.width - arrowWidth, 0);
//     // Line to the tip of the arrow (center right)
//     path.lineTo(size.width, size.height / 2);
//     // Line to the bottom-right edge start
//     path.lineTo(size.width - arrowWidth, size.height);
//     // Line to the bottom-left corner
//     path.lineTo(0, size.height);
//     // Close the path back to the top-left
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
