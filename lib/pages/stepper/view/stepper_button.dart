import 'package:empireone_app/pages/stepper/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class StepperButton extends StatelessWidget {
  const StepperButton({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<StepperBloc>();
    return BlocBuilder<StepperBloc, StepperState>(
      builder: (context, state) {
        return Row(
          children: [
            // if (state.currentStep > 0)
            //   Expanded(
            //     child: OutlinedButton(
            //       onPressed: () {
            //         bloc.add(BackPressed());
            //         // setState(() => currentStep--);
            //       },
            //       child: const Text('Back'),
            //     ),
            //   ),
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
                                color: Theme.of(context).colorScheme.primary,
                              ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
