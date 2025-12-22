import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/verify_account/view/view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupFooter extends StatelessWidget {
  const SignupFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            context.push(VerifyAccountPage.route);
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
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/google.png'),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Text(
                  AppLocalizations.of(context)?.continueWithGoogle ?? '',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
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
                  textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
                    textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
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
  }
}
