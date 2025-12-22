import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordFooter extends StatelessWidget {
  const ForgotPasswordFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)?.wellSendSixDigitVerificationEmail ?? '',
          style: GoogleFonts.inter(
            textStyle: Theme.of(context).textTheme.bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface)
                .copyWith(fontSize: 11.9),
          ),
        ),
      ],
    );
  }
}
