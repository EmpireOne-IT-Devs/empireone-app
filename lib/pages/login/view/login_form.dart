import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/login/bloc/bloc.dart';
import 'package:empireone_app/pages/login/view/view.dart';
import 'package:empireone_app/pages/widgets/labeled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<LoginBloc>();
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
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
                LabeledTextField(
                  error: Text(state.email.errorType.message.toString()),
                  onChanged: (value) {
                    bloc.add(EmailChanged(value));
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
                LabeledTextField(
                  onChanged: (value) {
                    bloc.add(PasswordChanged(value));
                  },
                  hintText:
                      AppLocalizations.of(context)?.enterYourPassword ?? '',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/passwordlock.svg',
                    fit: BoxFit.contain,
                  ),
                  textInputAction: TextInputAction.done,
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
                          textStyle: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 11.9,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
                LoginFooter(),
              ],
            ),
          ),
        );
      },
    );
  }
}
