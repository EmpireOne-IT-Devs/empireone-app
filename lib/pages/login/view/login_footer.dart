import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // context.push(HomePage.route);
          },
          child: Text(
            AppLocalizations.of(context)?.login ?? '',
            style: GoogleFonts.inter(
              textStyle: Theme.of(context).textTheme.labelLarge,
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
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    color: Theme.of(context).colorScheme.onTertiary,
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
              // SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  AppLocalizations.of(context)?.continueWithGoogle ?? '',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.titleSmall,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onPrimary,
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
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
              Text(
                AppLocalizations.of(context)?.createAccount ?? '',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.titleSmall,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
