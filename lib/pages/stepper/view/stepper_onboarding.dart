import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/stepper/view/view.dart';
import 'package:empireone_app/pages/stepper/widgets/stepper_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StepperOnboarding extends StatefulWidget {
  const StepperOnboarding({super.key});

  @override
  State<StepperOnboarding> createState() => _StepperOnboardingState();
}

class _StepperOnboardingState extends State<StepperOnboarding> {
  int currentStep = 0;

  Widget _buildStepContent() {
    switch (currentStep) {
      case 0:
        return const StepperContent();
      case 1:
        return const StepperForm();
      case 2:
        return const StepperVerification();
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
        // SizedBox(height: 300, child: _buildStepContent()),
        SizedBox(height: 300, child: ListView(children: [_buildStepContent()])),

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
              child: OutlinedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    width: 2,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                onPressed: () {
                  if (currentStep < 2) {
                    setState(() => currentStep++);
                    print('currentStep $currentStep');
                  }
                },
                child: Text(
                  'Next',
                  style:
                      GoogleFonts.mada(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                          )
                          .copyWith(fontSize: 24)
                          .copyWith(fontWeight: FontWeight.bold)
                          .copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
