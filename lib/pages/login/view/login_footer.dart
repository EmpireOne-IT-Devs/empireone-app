import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/login/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_login/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<LoginBloc>();

    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.push(VerifyLoginPage.route);
              },
              child: Text(
                AppLocalizations.of(context)?.login ?? '',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontSize: 13.6,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
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
                bloc.add(GooglePressed());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/google.png'),
                  // SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
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
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)?.dontHaveAnAccount ?? '',
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
                      AppLocalizations.of(context)?.createAccount ?? '',
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
