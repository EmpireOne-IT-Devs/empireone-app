import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/widgets/labeled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 246, // Minimum height to maintain your UI design
        maxWidth: 370, // Good practice for web/tablet layouts
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
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)?.emailAddress ?? '',
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
            LabeledTextField(
              onChanged: (value) {},
              hintText: AppLocalizations.of(context)?.yourEmailExample ?? '',
              prefixIcon: SvgPicture.asset(
                'assets/icons/email.svg',
                fit: BoxFit.contain,
              ),
              textInputAction: TextInputAction.next,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  AppLocalizations.of(context)?.sendVerificationCode ?? '',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontSize: 13.6,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                AppLocalizations.of(context)?.backToLogin ?? '',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.bodyMedium
                      ?.copyWith(fontSize: 11.9)
                      .copyWith(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
