import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/login_employee/widgets/login_employee_field.dart';
import 'package:empireone_app/pages/widgets/labeled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupEmployeeForm extends StatefulWidget {
  const SignupEmployeeForm({super.key});

  @override
  State<SignupEmployeeForm> createState() => _SignupEmployeeFormState();
}

class _SignupEmployeeFormState extends State<SignupEmployeeForm> {
  bool _isChecked = false;
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
                AppLocalizations.of(context)?.createAccount ?? '',
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
                    textStyle: Theme.of(context).textTheme.labelMedium
                        ?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 11.9,
                        ),
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
                    textStyle: Theme.of(context).textTheme.labelMedium
                        ?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 11.9,
                        ),
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
              textInputFormatter: [],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)?.confirmPassword ?? '',
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
            LoginEmployeeField(
              onChanged: (value) {},
              hintText: AppLocalizations.of(context)?.confirmPassword ?? '',
              prefixIcon: SvgPicture.asset(
                'assets/icons/email.svg',
                fit: BoxFit.contain,
              ),
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.text,
              textInputFormatter: [],
            ),  
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    side: BorderSide(width: 0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(3),
                    ),
                    activeColor: Theme.of(context).colorScheme.primaryContainer,
                    value: _isChecked,
                    onChanged: (bool? value) =>
                        setState(() => _isChecked = value!),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        style: GoogleFonts.mada(
                          color: Theme.of(context).colorScheme.onTertiary,
                        ).copyWith(fontSize: 12),
                        children: [
                          TextSpan(
                            text:
                                '${AppLocalizations.of(context)?.imAgreeToThe} ',
                          ),
                          TextSpan(
                            text: 'Terms of Service',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            // Use TapGestureRecognizer here for clicks in 2025
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                AppLocalizations.of(context)?.createAccount ?? '',
                style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontSize: 13.6,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)?.alreadyHaveAnAccount ?? '',
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
                      AppLocalizations.of(context)?.login ?? '',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.titleSmall
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 13.6,
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
