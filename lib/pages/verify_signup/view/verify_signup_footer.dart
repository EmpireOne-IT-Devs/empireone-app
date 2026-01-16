import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifySignupFooter extends StatelessWidget {
  const VerifySignupFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      AppLocalizations.of(context)?.resendCodeInstructions ?? '',
      style: GoogleFonts.inter(
        textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 11.9,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
