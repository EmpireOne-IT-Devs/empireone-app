import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyLoginHeading extends StatelessWidget {
  const VerifyLoginHeading({super.key});

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
          padding: EdgeInsets.all(16),
          child: SvgPicture.asset('assets/icons/verifylogin.svg'),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
          child: Text(
            AppLocalizations.of(context)?.verifyLogin ?? '',
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
