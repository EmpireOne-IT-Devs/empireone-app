import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/models/textfield_input/textfield_input.dart';
import 'package:empireone_app/pages/signup_employee/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/widget.dart';

class SignupEmployeeForm extends StatelessWidget {
  const SignupEmployeeForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SignupEmployeeBloc>();
    return BlocBuilder<SignupEmployeeBloc, SignupEmployeeState>(
      builder: (context, state) {
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
                SignupEmployeeField(
                  onChanged: (value) {
                    bloc.add(EmployeeIdChanged(value));
                  },
                  hintText: '35653445',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/employeeicon.svg',
                    fit: BoxFit.contain,
                  ),
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.number,
                  textInputFormatter: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(6),
                  ],
                  errorStyle: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                  ),
                  errorText: state.employeeId.value != ''
                      ? ''
                      : state.employeeId.errorType.message,
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
                SignupEmployeeField(
                  errorStyle: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                  ),
                  errorText: state.signupEmployeePassword.errorType.message,
                  onChanged: (value) {
                    bloc.add(EmployeePasswordChanged(value));
                  },
                  hintText:
                      AppLocalizations.of(context)?.enterYourPassword ?? '',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/passwordlock.svg',
                    fit: BoxFit.contain,
                  ),
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.text,
                  textInputFormatter: [],
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
                SignupEmployeeField(
                  errorStyle: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                  ),
                  errorText:
                      state.signupEmployeeConfirmPassword.errorType.message,
                  onChanged: (value) {
                    bloc.add(SignupEmployeeConfirmPassword(value));
                  },
                  hintText: AppLocalizations.of(context)?.confirmPassword ?? '',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/email.svg',
                    fit: BoxFit.contain,
                  ),
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.text,
                  textInputFormatter: [],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      onChanged: (value) {
                        bloc.add(AgreementCheckBoxPressed(state.isChecked));
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
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    AppLocalizations.of(context)?.createAccount ?? '',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.labelLarge
                          ?.copyWith(
                            fontSize: 13.6,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)?.alreadyHaveAnAccount ??
                            '',
                        style: GoogleFonts.inter(
                          textStyle: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onTertiary,
                                fontSize: 13.6,
                              ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AppLocalizations.of(context)?.login ?? '',
                          style: GoogleFonts.inter(
                            textStyle: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 13.6,
                                ),
                          ),
                        ),
                      ),
                    ],
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
