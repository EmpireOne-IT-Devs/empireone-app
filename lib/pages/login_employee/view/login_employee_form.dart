import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/login_employee/widgets/login_employee_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginEmployeeForm extends StatelessWidget {
  const LoginEmployeeForm({super.key});

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
                  fontSize: 20.4,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
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
                  'Employee ID:',
                  style: GoogleFonts.inter(
                    color: Theme.of(context).colorScheme.onPrimary,
                    textStyle: Theme.of(context).textTheme.labelMedium,
                    fontWeight: FontWeight.w500,
                    fontSize: 11.9,
                  ),
                ),
              ),
            ),
            LoginEmployeeField(
              onChanged: (value) {},
              hintText: '35653445',
              prefixIcon: SvgPicture.asset(
                'assets/icons/employeeicon.svg',
                fit: BoxFit.contain,
              ),
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.number,
              textInputFormatter: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(6),
              ],
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
            LoginEmployeeField(
              onChanged: (value) {},
              hintText: AppLocalizations.of(context)?.enterYourPassword ?? '',
              prefixIcon: SvgPicture.asset(
                'assets/icons/passwordlock.svg',
                fit: BoxFit.contain,
              ),
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.text,
              textInputFormatter: null,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppLocalizations.of(context)?.forgotPassword ?? '',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.labelMedium,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(AppLocalizations.of(context)?.login ?? ''),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)?.dontHaveAnAccount ?? '',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.bodyMedium
                          ?.copyWith(
                            color: Theme.of(context).colorScheme.onTertiary,
                            fontSize: 13.6,
                          ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppLocalizations.of(context)?.createAccount ?? '',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.bodyLarge
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 13.6,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
