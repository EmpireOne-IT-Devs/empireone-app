import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/login/view/view.dart';
import 'package:empireone_app/pages/sign_up/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupFooter extends StatelessWidget {
  const SignupFooter({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SignupBloc>();
    return BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        return Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    state.name.errorType == ErrorType.none &&
                        state.signupEmail.errorType == ErrorType.none &&
                        state.signupPassword.errorType == ErrorType.none &&
                        state.signupConfirmPassword.errorType == ErrorType.none
                    ? Color(0xFF1329A9)
                    : Color(0xFF1329A9).withValues(alpha: 0.5),
              ),
              onPressed: () {
                if (state.name.errorType == ErrorType.none &&
                    state.signupEmail.errorType == ErrorType.none &&
                    state.signupPassword.errorType == ErrorType.none &&
                    state.signupConfirmPassword.errorType == ErrorType.none) {
                  bloc.add(SignupPressed());
                }
              },
              child: Text(
                AppLocalizations.of(context)?.createAccount ?? '',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontSize: 13.6,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      AppLocalizations.of(context)?.orContinueWith ?? '',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onTertiary,
                              fontSize: 11.9,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                bloc.add(GoogleSignupPressed());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/google.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      AppLocalizations.of(context)?.continueWithGoogle ?? '',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.titleSmall
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 13.6,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)?.alreadyHaveAnAccount ?? '',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.bodyMedium
                          ?.copyWith(
                            color: Theme.of(context).colorScheme.onTertiary,
                            fontSize: 13.6,
                          ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.push(LoginPage.route);
                    },
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
        );
      },
    );
  }
}
