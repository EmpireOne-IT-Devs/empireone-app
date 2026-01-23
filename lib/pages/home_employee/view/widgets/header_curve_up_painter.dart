import 'package:flutter/material.dart';

class HeaderCurveUpPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF1329A9), Color(0xFF49D0F4)],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    final path = Path();

    // Start top-left
    path.moveTo(0, 0);

    // Top-right
    path.lineTo(size.width, 0);

    // Right down
    path.lineTo(size.width, size.height * 0.7);

    // Curve up toward center (right side)
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.7,
      size.width * 0.65,
      size.height * 0.55,
    );

    // Center peak (UP)
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.35, // higher = more bump
      size.width * 0.35,
      size.height * 0.55,
    );

    // Curve back to left
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.7,
      0,
      size.height * 0.7,
    );

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
