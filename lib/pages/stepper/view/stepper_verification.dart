import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/stepper/bloc/bloc.dart';
import 'package:empireone_app/pages/stepper/widgets/widgets.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class StepperVerification extends StatefulWidget {
  const StepperVerification({super.key});

  @override
  State<StepperVerification> createState() => _StepperVerificationState();
}

class _StepperVerificationState extends State<StepperVerification> {
  List<TextEditingController> controllers = [];
  List<FocusNode> focusNodes = [];

  @override
  void initState() {
    super.initState();

    // fire once when StepperVerification screen is created
    context.read<StepperBloc>().add(StepperVerificationScreenCreated());
  }

  void stepperLengthListener(BuildContext context, StepperState state) {
    controllers = List.generate(
      state.verificationFieldsStepper.length,
      (index) => TextEditingController(),
    );
    focusNodes = List.generate(
      state.verificationFieldsStepper.length,
      (index) => FocusNode(),
    );
  }

  void stepperValueListener(
    BuildContext context,
    StepperState state,
    int index,
  ) {
    var value = state.verificationFieldsStepper[index].value;
    if (value.length == 1 && index < 5) {
      FocusScope.of(context).nextFocus();
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).previousFocus();
    }
    // if (value.isNotEmpty) {
    //   if (index + 1 == focusNodes.length) {
    //     FocusScope.of(context).unfocus();
    //   } else {
    //     focusNodes[index + 1].requestFocus();
    //   }
    // } else if (value.isEmpty) {
    //   if (index == 0) {
    //   } else {
    //     controllers[index - 1].value = const TextEditingValue(
    //       text: '\u200b',
    //       selection: TextSelection(baseOffset: 1, extentOffset: 1),
    //     );
    //     focusNodes[index - 1].requestFocus();
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<StepperBloc>();
    return BlocBuilder<StepperBloc, StepperState>(
      builder: (context, state) {
        print('val ${state.verificationFieldsStepper}');
        var bloc = context.read<StepperBloc>();
        return MultiBlocListener(
          listeners: [
            BlocListener<StepperBloc, StepperState>(
              listenWhen: (previous, current) =>
                  previous.verificationFieldsStepper.length !=
                  current.verificationFieldsStepper.length,
              listener: (context, state) =>
                  stepperLengthListener(context, state),
            ),
            ...List<BlocListener>.generate(
              state.verificationFieldsStepper.length,
              (index) {
                return BlocListener<StepperBloc, StepperState>(
                  listenWhen: (previous, current) =>
                      previous.verificationFieldsStepper[index].value !=
                      current.verificationFieldsStepper[index].value,
                  listener: (context, state) =>
                      stepperValueListener(context, state, index),
                );
              },
            ),
            BlocListener<StepperBloc, StepperState>(
              listenWhen: (previous, current) =>
                  previous.currentStep != current.currentStep,
              listener: (context, state) {
                if (state.currentStep == 2) {
                  // Step 3 screen is now visible
                  context.read<StepperBloc>().add(
                    StepperVerificationScreenCreated(),
                  );
                }
              },
            ),
          ],
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Theme.of(context).colorScheme.onTertiary,
              ),
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Verification',
                      style:
                          GoogleFonts.inter(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.titleSmall,
                              )
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              )
                              .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Please enter the verification code sent to your email address. This step ensures that your account is secure and confirms your identity. Make sure to input the correct code to avoid delays in completing your registration.',
                      style:
                          GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              )
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              )
                              .copyWith(fontSize: 11)
                              .copyWith(fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Enter Verification Code',
                    style:
                        GoogleFonts.inter(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                            )
                            .copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            )
                            .copyWith(fontSize: 11.9),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(controllers.length, (index) {
                    return SizedBox(
                      width: 48,
                      height: 56,
                      child: StepperVerificationField(
                        controller: controllers[index],
                        focusNode: focusNodes[index],
                        onChanged: (value) => bloc.add(
                          StepperVerificationFieldChanged(index, value),
                        ),
                        textStyle: GoogleFonts.mada(
                          color: Theme.of(context).colorScheme.onPrimary,
                          textStyle: Theme.of(context).textTheme.titleMedium,
                        ),
                        textAlign: TextAlign.center,
                        inputDecoration: InputDecoration(
                          focusColor: Theme.of(context).colorScheme.onPrimary,
                          enabledBorder:
                              (Theme.of(
                                        context,
                                      ).inputDecorationTheme.enabledBorder
                                      as OutlineInputBorder)
                                  .copyWith(
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSecondary,
                                    ),
                                  ),
                          focusedBorder:
                              (Theme.of(
                                        context,
                                      ).inputDecorationTheme.focusedBorder
                                      as OutlineInputBorder)
                                  .copyWith(
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSecondary,
                                    ),
                                  ),
                        ),
                      ),
                    );
                  }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)?.resendCode ?? '',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onTertiary,
                            ),
                        fontWeight: FontWeight.w400,
                        fontSize: 11.9,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '57s',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 11.9,
                            ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: OutlinedButton(
                    onPressed: () {
                      bloc.add(StepperVerificationPressed());
                    },
                    child: Text(
                      'Verify Code',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.labelLarge
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
