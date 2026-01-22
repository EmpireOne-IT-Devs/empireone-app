import 'package:empireone_app/pages/stepper/view/view.dart';
import 'package:flutter/material.dart';

class StepperForm extends StatefulWidget {
  const StepperForm({super.key});

  @override
  State<StepperForm> createState() => _StepperFormState();
}

class _StepperFormState extends State<StepperForm> {
  int currentStep = 0;

  final steps = ['Terms & Conditions', 'Employee ID', 'Email OTP Verification'];
  Widget _buildStepContent() {
    switch (currentStep) {
      case 0:
        return const Text('Terms & Conditions Content');
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
        Container(
          color: Colors.red,
          child: SizedBox(height: 300, child: _buildStepContent()),
        ),

        /// 🔹 Navigation buttons
        Row(
          children: [
            if (currentStep > 0)
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() => currentStep--);
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
