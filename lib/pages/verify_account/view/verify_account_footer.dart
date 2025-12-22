import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyAccountFooter extends StatelessWidget {
  const VerifyAccountFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)?.didntReceiveTheCode ?? '',
      style: GoogleFonts.inter(
        textStyle: Theme.of(context).textTheme.bodyMedium
            ?.copyWith(fontSize: 11.9)
            .copyWith(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }
}
