import 'package:empireone_app/pages/stepper/bloc/bloc.dart';
import 'package:empireone_app/pages/stepper/view/view.dart';
import 'package:empireone_app/pages/stepper/view/stepper_content.dart';
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
    var bloc = context.read<StepperBloc>();
    return BlocBuilder<StepperBloc, StepperState>(
      builder: (context, state) {
        return Column(
          children: [
            /// 🔹 Stepper UI
            SegmentedStepper(currentStep: state.currentStep),

            const SizedBox(height: 24),

            /// 🔹 Step content
            // SizedBox(height: 300, child: _buildStepContent()),
            SizedBox(
              height: 400,
              child: ListView(children: [_buildStepContent(state)]),
            ),

            /// 🔹 Navigation buttons
            Row(
              children: [
                if (state.currentStep > 0)
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        bloc.add(BackPressed());
                        // setState(() => currentStep--);
                      },
                      child: const Text('Back'),
                    ),
                  ),
                if (state.currentStep > 0) const SizedBox(width: 12),
                Visibility(
                  visible: state.currentStep == 0,
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: OutlinedButton(
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            width: 2,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        onPressed: () {
                          if (state.currentStep < 2) {
                            if (state.isCheckedTermsPriv == true) {
                              bloc.add(ContinuePressed());
                            }
                          }
                        },
                        child: Text(
                          'Next',
                          style:
                              GoogleFonts.mada(
                                    textStyle: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium,
                                  )
                                  .copyWith(fontSize: 24)
                                  .copyWith(fontWeight: FontWeight.bold)
                                  .copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
