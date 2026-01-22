import 'package:empireone_app/pages/stepper/view/view.dart';
import 'package:empireone_app/pages/stepper/widgets/stepper_content.dart';
import 'package:flutter/material.dart';

class StepperOnboarding extends StatefulWidget {
  const StepperOnboarding({super.key});

  @override
  State<StepperOnboarding> createState() => _StepperOnboardingState();
}

class _StepperOnboardingState extends State<StepperOnboarding> {
  int currentStep = 0;

  final steps = ['Terms & Conditions', 'Employee ID', 'Email OTP Verification'];
  Widget _buildStepContent() {
    switch (currentStep) {
      case 0:
        return StepperContent();
      case 1:
        return const Text('Employee ID Content');
      case 2:
        return const Text('Email OTP Verification Content');
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// 🔹 Stepper UI
        SegmentedStepper(currentStep: currentStep),

        const SizedBox(height: 24),

        /// 🔹 Step content
        SizedBox(height: 300, child: _buildStepContent()),

        /// 🔹 Navigation buttons
        Row(
          children: [
            if (currentStep > 0)
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() => currentStep--);
                    print('currentStep $currentStep');
                  },
                  child: const Text('Back'),
                ),
              ),
            if (currentStep > 0) const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  if (currentStep < 2) {
                    setState(() => currentStep++);
                    print('currentStep $currentStep');
                  }
                },
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
