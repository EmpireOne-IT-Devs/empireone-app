import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/sign_up/bloc/signup_bloc.dart';
import 'package:empireone_app/pages/sign_up/bloc/signup_event.dart';
import 'package:empireone_app/pages/sign_up/bloc/signup_state/signup_state.dart';
import 'package:empireone_app/pages/sign_up/view/signup_footer.dart';
import 'package:empireone_app/pages/widgets/labeled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SignupBloc>();
    return BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        print('name: ${state.name.value}');
        print('signupEmail: ${state.signupEmail.value}');
        print('signupPassword: ${state.signupPassword.value}');
        print('signupConfirmPassword: ${state.signupConfirmPassword.value}');
        return Container(
          constraints: BoxConstraints(
            minHeight: 400, // Minimum height to maintain your UI design
            maxWidth: 500, // Good practice for web/tablet layouts
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    AppLocalizations.of(context)?.createAccount ?? '',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.titleLarge,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                // SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    top: 0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppLocalizations.of(context)?.name ?? '',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 11.9,
                            ),
                      ),
                    ),
                  ),
                ),
                LabeledTextField(
                  // error: Text(state.signupEmail.errorType.message.toString()),
                  onChanged: (value) {
                    bloc.add(NameChanged(value));
                  },
                  hintText: AppLocalizations.of(context)?.enterYourName ?? '',
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                    size: 25,
                    color: Theme.of(context).colorScheme.outline,
                    weight: 2,
                  ),
                  textInputAction: TextInputAction.next,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    top: 16,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppLocalizations.of(context)?.email ?? '',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 11.9,
                            ),
                      ),
                    ),
                  ),
                ),
                LabeledTextField(
                  // error: Text(state.signupEmail.errorType.message.toString()),
                  onChanged: (value) {
                    bloc.add(SignupEmailChanged(value));
                  },
                  hintText:
                      AppLocalizations.of(context)?.yourEmailExample ?? '',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/email.svg',
                    fit: BoxFit.contain,
                  ),
                  textInputAction: TextInputAction.next,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppLocalizations.of(context)?.password ?? '',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 11.9,
                            ),
                      ),
                    ),
                  ),
                ),
                LabeledTextField(
                  onChanged: (value) {
                    bloc.add(SignupPasswordChanged(value));
                  },
                  // error: Text(
                  //   state.signupPassword.errorType.message.toString(),
                  // ),
                  hintText:
                      AppLocalizations.of(context)?.enterYourPassword ?? '',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/passwordlock.svg',
                    fit: BoxFit.contain,
                  ),
                  textInputAction: TextInputAction.next,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppLocalizations.of(context)?.confirmPassword ?? '',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 11.9,
                            ),
                      ),
                    ),
                  ),
                ),
                LabeledTextField(
                  onChanged: (value) {
                    bloc.add(SignupConfirmPasswordChanged(value));
                  },
                  // error: Text(
                  //   state.signupConfirmPassword.errorType.message.toString(),
                  // ),
                  hintText: AppLocalizations.of(context)?.confirmPassword ?? '',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/passwordlock.svg',
                    fit: BoxFit.contain,
                  ),
                  textInputAction: TextInputAction.done,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      onChanged: (value) {
                        bloc.add(
                          SignupAgreementCheckBoxPressed(state.isChecked),
                        );
                      },
                      side: BorderSide(width: 0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(3),
                      ),
                      activeColor: Theme.of(
                        context,
                      ).colorScheme.primaryContainer,
                      value: state.isChecked,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          style: GoogleFonts.mada(
                            color: Theme.of(context).colorScheme.onTertiary,
                          ).copyWith(fontSize: 12),
                          children: [
                            TextSpan(
                              text:
                                  '${AppLocalizations.of(context)?.imAgreeToThe} ',
                            ),
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              // Use TapGestureRecognizer here for clicks in 2025
                            ),
                            const TextSpan(text: ' and '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SignupFooter(),
              ],
            ),
          ),
        );
      },
    );
  }
}
