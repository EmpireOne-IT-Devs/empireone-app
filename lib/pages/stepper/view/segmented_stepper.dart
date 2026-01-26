import 'package:flutter/material.dart';

class SegmentedStepper extends StatelessWidget {
  final int currentStep;

  const SegmentedStepper({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    final steps = [
      'Terms & Conditions',
      'Employee ID',
      'Email OTP Verification',
    ];
    return Row(
      children: List.generate(steps.length, (index) {
        bool isFirstStep = index == 0;
        bool isLastStep = index == steps.length - 1;
        bool isActive = index == currentStep;
        bool isCompleted = index < currentStep;
        Color themeColor = isActive || isCompleted
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.onTertiary;
        return Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: isActive || isCompleted
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onTertiary,
                ),
                bottom: BorderSide(
                  color: isActive || isCompleted
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onTertiary,
                ),
              ),
            ),
            child: CustomPaint(
              painter: ArrowBorderPainter(
                color: themeColor,
                isLastStep: isLastStep,
                isFirstStep: isFirstStep,
              ),
              child: ClipPath(
                clipper: ArrowClipper(
                  isLastStep: isLastStep,
                  isFirstStep: isFirstStep,
                ),
                child: Container(
                  height: 34,
                  padding: EdgeInsets.only(
                    left: isFirstStep ? 5 : 15,
                    right: isLastStep ? 5 : 10,
                  ),
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text(
                    steps[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: isActive
                          ? FontWeight.w600
                          : FontWeight.normal,
                      color: isActive || isCompleted
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onTertiary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
    // return Row(
    //   children: List.generate(steps.length, (index) {
    //     final isActive = index == currentStep;
    //     final isCompleted = index < currentStep;

    //     return Expanded(
    //       child: ClipPath(
    //         clipper: ArrowClipper(arrowWidth: 20, arrowHeight: 40),
    //         child: Container(
    //           height: 34,
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             border: Border.all(
    //               color: isActive || isCompleted
    //                   ? const Color(0xFF1E40FF)
    //                   : Colors.grey.shade300,
    //             ),
    //             borderRadius: BorderRadius.horizontal(
    //               left: Radius.circular(index == 0 ? 8 : 0),
    //               right: Radius.circular(index == steps.length - 1 ? 8 : 0),
    //             ),
    //           ),
    //           child: Center(
    //             child: Text(
    //               steps[index],
    //               style: TextStyle(
    //                 fontSize: 12,
    //                 fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
    //                 color: isActive || isCompleted
    //                     ? const Color(0xFF1E40FF)
    //                     : Colors.grey,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
    //   }),
    // );
  }
}

class ArrowClipper extends CustomClipper<Path> {
  final bool isLastStep;
  final bool isFirstStep;
  ArrowClipper({required this.isLastStep, required this.isFirstStep});

  @override
  Path getClip(Size size) {
    double arrowWidth = 10.0;
    Path path = Path();

    // Start Top-Left (Move inward if not first step to accommodate previous arrow)
    path.moveTo(isFirstStep ? 0 : arrowWidth, 0);

    // Top Edge
    path.lineTo(isLastStep ? size.width : size.width - arrowWidth, 0);

    // Right Edge (The Point)
    if (!isLastStep) {
      path.lineTo(size.width, size.height / 2);
      path.lineTo(size.width - arrowWidth, size.height);
    } else {
      path.lineTo(size.width, size.height);
    }

    // Bottom Edge
    path.lineTo(isFirstStep ? 0 : arrowWidth, size.height);

    // Left Edge (The "Inward" Notch)
    if (!isFirstStep) {
      path.lineTo(
        arrowWidth * 2,
        size.height / 2,
      ); // Indent to receive previous arrow
      path.lineTo(arrowWidth, 0);
    } else {
      path.lineTo(0, 0);
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class ArrowBorderPainter extends CustomPainter {
  final Color color;
  final bool isLastStep;
  final bool isFirstStep;

  ArrowBorderPainter({
    required this.color,
    required this.isLastStep,
    required this.isFirstStep,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    double arrowWidth = 10.0;
    Path path = Path();

    // Start Top-Left
    path.moveTo(isFirstStep ? 0 : arrowWidth, 0);

    // 1. Draw Top Line
    path.lineTo(isLastStep ? size.width : size.width - arrowWidth, 0);

    // 2. Draw Right Arrow Point
    if (!isLastStep) {
      path.lineTo(size.width, size.height / 2);
      path.lineTo(size.width - arrowWidth, size.height);
    } else {
      path.lineTo(size.width, size.height);
    }

    // 3. Draw Bottom Line
    path.lineTo(isFirstStep ? 0 : arrowWidth, size.height);

    // 4. Draw Left Side ONLY for the first step
    // For others, we leave it open so it "connects" to the previous arrow
    if (isFirstStep) {
      path.lineTo(0, 0);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
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
