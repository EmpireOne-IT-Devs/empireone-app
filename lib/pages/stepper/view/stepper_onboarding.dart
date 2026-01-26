import 'package:empireone_app/pages/stepper/bloc/bloc.dart';
import 'package:empireone_app/pages/stepper/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class StepperOnboarding extends StatefulWidget {
  const StepperOnboarding({super.key});

  @override
  State<StepperOnboarding> createState() => _StepperOnboardingState();
}

class _StepperOnboardingState extends State<StepperOnboarding> {
  Widget _buildStepContent(StepperState state) {
    switch (state.currentStep) {
      case 0:
        return const StepperTermsCondition();
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
    return BlocBuilder<StepperBloc, StepperState>(
      builder: (context, state) {
        return Column(
          children: [
            /// 🔹 Stepper UI
            SegmentedStepper(currentStep: state.currentStep),
            const SizedBox(height: 24),

            /// 🔹 Step content
            // SizedBox(height: 300, child: _buildStepContent()),
            SizedBox(height: 400, child: _buildStepContent(state)),

            /// 🔹 Navigation buttons
          ],
        );
      },
    );
  }
}
