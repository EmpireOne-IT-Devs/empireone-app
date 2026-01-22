import 'package:flutter/material.dart';

class SegmentedStepper extends StatelessWidget {
  final int currentStep;

  const SegmentedStepper({
    super.key,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    final steps = [
      'Terms & Conditions',
      'Employee ID',
      'Email OTP Verification',
    ];

    return Row(
      children: List.generate(steps.length, (index) {
        final isActive = index == currentStep;
        final isCompleted = index < currentStep;

        return Expanded(
          child: Container(
            height: 36,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: isActive || isCompleted
                    ? const Color(0xFF1E40FF)
                    : Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(index == 0 ? 8 : 0),
                right: Radius.circular(index == steps.length - 1 ? 8 : 0),
              ),
            ),
            child: Center(
              child: Text(
                steps[index],
                style: TextStyle(
                  fontSize: 12,
                  fontWeight:
                      isActive ? FontWeight.w600 : FontWeight.normal,
                  color: isActive || isCompleted
                      ? const Color(0xFF1E40FF)
                      : Colors.grey,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
