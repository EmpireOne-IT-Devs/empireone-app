import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/login/view/login_footer.dart';
import 'package:empireone_app/pages/widgets/labeled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 400, // Minimum height to maintain your UI design
        maxWidth: 500, // Good practice for web/tablet layouts
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
              padding: const EdgeInsets.all(16.0),
              child: Text(
                AppLocalizations.of(context)?.login ?? '',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.titleLarge,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            // SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 16,
                left: 0,
                right: 0,
                top: 0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)?.email ?? '',
                  style: GoogleFonts.inter(
                    color: Theme.of(context).colorScheme.onPrimary,
                    textStyle: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ),
            LabeledTextField(
              onChanged: (value) {
                // bloc.add(
                //   EmailChanged(value),
                // );
              },
              hintText: AppLocalizations.of(context)?.yourEmailExample ?? '',
              prefixIcon: Icon(Icons.email_outlined),
              textInputAction: TextInputAction.next,
              // style: TextStyle(
              //   color: Theme.of(context).colorScheme.onSecondary,
              // ),
              // textAlign: TextAlign.left,
              // decoration: InputDecoration(
              //   hintText: 'your.email@example.com',
              //   hintStyle: GoogleFonts.inter(
              //     textStyle: Theme.of(context).textTheme.bodyMedium,
              //     color: Theme.of(context).colorScheme.onSurfaceVariant,
              //   ),
              //   prefixIcon: Icon(
              //     Icons.email_outlined,
              //     color: Theme.of(context).colorScheme.onSurfaceVariant,
              //   ),
              // ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)?.password ?? '',
                  style: GoogleFonts.inter(
                    color: Theme.of(context).colorScheme.onPrimary,
                    textStyle: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ),
            LabeledTextField(
              onChanged: (value) {},
              hintText: AppLocalizations.of(context)?.enterYourPassword ?? '',
              prefixIcon: Icon(Icons.lock_outline),
              textInputAction: TextInputAction.done,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppLocalizations.of(context)?.forgotPassword ?? '',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
            LoginFooter(),
          ],
        ),
      ),
    );
  }
}
