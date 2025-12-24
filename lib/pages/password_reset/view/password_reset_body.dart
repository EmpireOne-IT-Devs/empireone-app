import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordResetBody extends StatelessWidget {
  const PasswordResetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 10,
              right: -20,
              child: SvgPicture.asset('assets/icons/star.svg'),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              padding: EdgeInsets.all(32),
              child: SvgPicture.asset('assets/icons/passwordreseticon.svg'),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            AppLocalizations.of(context)?.passwordReset ?? '',
            style: GoogleFonts.inter(
              textStyle: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontSize: 30.6),
            ),
          ),
        ),
        Text(AppLocalizations.of(context)?.yourPasswordSuccessfully ?? ''),
        Text(AppLocalizations.of(context)?.youCanLogNewPassword ?? ''),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0),
          child: ElevatedButton(
            style: ButtonStyle(
              minimumSize: WidgetStateProperty.all<Size>(
                const Size(double.infinity, 60),
              ),
              backgroundColor: WidgetStateProperty.all<Color>(
                Theme.of(context).colorScheme.inversePrimary,
              ),
              shape: WidgetStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
            onPressed: () {},
            child: Text(
              AppLocalizations.of(context)?.backToLogin ?? '',
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.titleSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.primary)
                    .copyWith(fontSize: 15.3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
