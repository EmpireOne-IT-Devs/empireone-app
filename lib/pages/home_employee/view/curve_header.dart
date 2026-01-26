import 'package:empireone_app/pages/home_employee/view/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CurvedHeader extends StatelessWidget {
  const CurvedHeader({super.key, required this.height, required this.child});

  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomPaint(
            size: Size(double.infinity, height),
            painter: HeaderCurveUpPainter(),
          ),
          Positioned(bottom: -height / 2.50, left: 0, right: 0, child: child),
        ],
      ),
    );
  }
}
