import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/verify_account/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyAccountForm extends StatelessWidget {
  const VerifyAccountForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 324, maxWidth: 364),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Theme.of(context).colorScheme.onSurface,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
              child: Container(
                constraints: BoxConstraints(minHeight: 48, maxWidth: 316),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      spreadRadius: 1,
                      // Offset(x, y): dy=4 moves the shadow DOWN, hiding the top edge
                      offset: const Offset(0, 4),
                    ),
                  ],
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(154, 48),
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                    shadowColor: const Color(0x1F000000),
                    surfaceTintColor: Colors.transparent,
                    elevation: 5,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Theme.of(context).colorScheme.onTertiary,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        AppLocalizations.of(context)?.email ?? '',
                        style: GoogleFonts.inter(
                          textStyle: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onTertiary,
                                fontSize: 13.6,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              AppLocalizations.of(context)?.enterVerificationCode ?? '',
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 11.9,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(6, (index) {
                  return SizedBox(
                    width: 48,
                    height: 56,
                    child: VerifyAccountField(
                      onChanged: (value) {
                        if (value.length == 1 && index < 5) {
                          FocusScope.of(
                            context,
                          ).nextFocus(); // Auto-move focus to next box
                        } else if (value.isEmpty && index > 0) {
                          FocusScope.of(
                            context,
                          ).previousFocus(); // Auto-move back on delete
                        }
                      },
                      textAlign: TextAlign.center,
                      inputDecoration: InputDecoration(
                        focusColor: Theme.of(context).colorScheme.onPrimary,
                        enabledBorder:
                            (Theme.of(
                                      context,
                                    ).inputDecorationTheme.enabledBorder
                                    as OutlineInputBorder)
                                .copyWith(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSecondary,
                                  ),
                                ),
                        focusedBorder:
                            (Theme.of(
                                      context,
                                    ).inputDecorationTheme.focusedBorder
                                    as OutlineInputBorder)
                                .copyWith(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSecondary,
                                  ),
                                ),
                      ),
                      textStyle: GoogleFonts.mada(
                        color: Theme.of(context).colorScheme.onPrimary,
                        textStyle: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  );
                }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)?.resendCode ?? '',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onTertiary,
                    ),
                    fontWeight: FontWeight.w400,
                    fontSize: 11.9,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  '57s',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 11.9,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Verify Code',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
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
