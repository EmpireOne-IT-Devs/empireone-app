import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/forgot_password/bloc/bloc.dart';
import 'package:empireone_app/pages/login/view/view.dart';
import 'package:empireone_app/pages/widgets/labeled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<ForgotPasswordBloc>();
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
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
                  error: Text(
                    state.emailForgotPassVal.errorType.message.toString(),
                  ),
                  onChanged: (value) {
                    bloc.add(EmailForgotPassValChanged(value));
                  },
                  hintText:
                      AppLocalizations.of(context)?.yourEmailExample ?? '',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/email.svg',
                    fit: BoxFit.contain,
                  ),
                  textInputAction: TextInputAction.next,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: state.emailForgotPassVal.value.isNotEmpty
                          ? Color(0xFF1329A9)
                          : Color(0xFF1329A9).withValues(alpha: 0.5),
                    ),
                    onPressed: () {
                      if (state.emailForgotPassVal.value.isNotEmpty) {
                        bloc.add(SendVerificationCodePressed());
                      }
                    },
                    child: Text(
                      AppLocalizations.of(context)?.sendVerificationCode ?? '',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.labelLarge
                            ?.copyWith(
                              fontSize: 13.6,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextButton(
                    onPressed: () => context.push(LoginPage.route),
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
