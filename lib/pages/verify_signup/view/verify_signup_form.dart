import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/verify_signup/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_signup/widgets/verification_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifySignupForm extends StatefulWidget {
  const VerifySignupForm({super.key});

  @override
  State<VerifySignupForm> createState() => _VerifySignupFormState();
}

class _VerifySignupFormState extends State<VerifySignupForm> {
  List<TextEditingController> controllers = [];
  List<FocusNode> focusNodes = [];

  void lengthListenerSignup(BuildContext context, VerifySignupState state) {
    controllers = List.generate(
      state.verificationFieldsSignup.length,
      (index) => TextEditingController(),
    );
    focusNodes = List.generate(
      state.verificationFieldsSignup.length,
      (index) => FocusNode(),
    );
  }

  void valueListenerSignup(
    BuildContext context,
    VerifySignupState state,
    int index,
  ) {
    var value = state.verificationFieldsSignup[index].value;
    print('value $value');
    print('statevalue: ${state.verificationFieldsSignup[index].value}');
    print('value length: ${value.length}');
    print('index: $index');
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
    var bloc = context.read<VerifySignupBloc>();
    return BlocBuilder<VerifySignupBloc, VerifySignupState>(
      builder: (context, state) {
        print('fields ${state.verificationFieldsSignup}');
        return MultiBlocListener(
          listeners: [
            BlocListener<VerifySignupBloc, VerifySignupState>(
              listenWhen: (previous, current) =>
                  previous.verificationFieldsSignup.length !=
                  current.verificationFieldsSignup.length,
              listener: (context, state) =>
                  lengthListenerSignup(context, state),
            ),
            ...List<BlocListener>.generate(
              state.verificationFieldsSignup.length,
              (index) {
                return BlocListener<VerifySignupBloc, VerifySignupState>(
                  listenWhen: (previous, current) =>
                      previous.verificationFieldsSignup[index].value !=
                      current.verificationFieldsSignup[index].value,
                  listener: (context, state) =>
                      valueListenerSignup(context, state, index),
                );
              },
            ),
          ],
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Container(
              constraints: BoxConstraints(minHeight: 324, maxWidth: 364),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Theme.of(context).colorScheme.onSurface,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
                      child: Container(
                        constraints: BoxConstraints(
                          minHeight: 48,
                          maxWidth: 154,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 10,
                              spreadRadius: 1,
                              // Offset(x, y): dy=4 moves the shadow DOWN, hiding the top edge
                              offset: const Offset(0, 4),
                            ),
                          ],
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            fixedSize: Size(154, 48),
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(12),
                            ),
                            shadowColor: const Color(0x1F000000),
                            surfaceTintColor: Colors.transparent,
                            elevation: 5,
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.email_outlined,
                                color: Theme.of(context).colorScheme.onTertiary,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                AppLocalizations.of(context)?.email ?? '',
                                style: GoogleFonts.inter(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.onTertiary,
                                        fontSize: 13.6,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)?.enterVerificationCode ?? '',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.labelSmall
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 11.9,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(controllers.length, (index) {
                          return SizedBox(
                            width: 48,
                            height: 56,
                            child: VerificationField(
                              controller: controllers[index],
                              focusNode: focusNodes[index],
                              onChanged: (value) {
                                bloc.add(
                                  VerifySignupFieldChanged(index, value),
                                );
                              },
                              textAlign: TextAlign.center,
                              inputDecoration: InputDecoration(
                                focusColor: Theme.of(
                                  context,
                                ).colorScheme.onPrimary,
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
                              textStyle: GoogleFonts.mada(
                                color: Theme.of(context).colorScheme.onPrimary,
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.titleMedium,
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context)?.resendCode ?? '',
                          style: GoogleFonts.inter(
                            textStyle: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onTertiary,
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
                      child: ElevatedButton(
                        onPressed: () {
                          bloc.add(VerifySignupOtpPressed());
                        },
                        child: Text(
                          AppLocalizations.of(context)?.verifyCode ?? '',
                          style: GoogleFonts.inter(
                            textStyle: Theme.of(context).textTheme.labelLarge
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface,
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
            ),
          ),
        );
      },
    );
  }
}
