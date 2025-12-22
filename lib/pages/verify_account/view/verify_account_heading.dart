import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyAccountHeading extends StatelessWidget {
  const VerifyAccountHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Theme.of(context).colorScheme.onSurface,
          ),
          constraints: BoxConstraints(minHeight: 96, maxWidth: 96),
          child: Image.asset('assets/images/verifylogo.png'),
          // child: Icon(Icons.verified_user),
          // child: Image.asset('assets/images/verifylogo.png'),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
          child: Text(
            AppLocalizations.of(context)?.verifyAccount ?? '',
            style: GoogleFonts.inter(
              textStyle: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
        Text(
          AppLocalizations.of(context)?.enterSixDigit ?? '',
          style: GoogleFonts.inter(
            textStyle: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
