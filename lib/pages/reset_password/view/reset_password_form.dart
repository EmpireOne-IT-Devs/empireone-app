import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/reset_password/bloc/bloc.dart';
import 'package:empireone_app/pages/widgets/labeled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<ResetPasswordBloc>();
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        return Container(
          constraints: BoxConstraints(minHeight: 324, maxWidth: 364),
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
                      AppLocalizations.of(context)?.newPassword ?? '',
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
                    bloc.add(ResetNewPasswordChanged(value));
                  },
                  hintText:
                      AppLocalizations.of(context)?.enterNewPassword ?? '',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/passwordlock.svg',
                    fit: BoxFit.contain,
                  ),
                  textInputAction: TextInputAction.next,
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
                LabeledTextField(
                  onChanged: (value) {
                    bloc.add(ResetConfirmNewPassword(value));
                  },
                  hintText:
                      AppLocalizations.of(context)?.confirmNewPassword ?? '',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/passwordlock.svg',
                    fit: BoxFit.contain,
                  ),
                  textInputAction: TextInputAction.next,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: 130,
                      maxWidth: double.infinity,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSecondary,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Password must contain:',
                                style:
                                    GoogleFonts.inter(
                                          textStyle: Theme.of(
                                            context,
                                          ).textTheme.labelSmall,
                                        )
                                        .copyWith(fontSize: 11.9)
                                        .copyWith(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.primary,
                                        ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/roundcheck.svg'),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  state.resetNewPassword.value.length < 8
                                      ? 'At least 8 characters'
                                      : '',
                                  style:
                                      GoogleFonts.inter(
                                            textStyle: Theme.of(
                                              context,
                                            ).textTheme.bodyMedium,
                                          )
                                          .copyWith(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.primary,
                                          )
                                          .copyWith(fontSize: 11.9),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/roundcheck.svg'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    !RegExp(
                                          r'[A-Z]',
                                        ).hasMatch(state.resetNewPassword.value)
                                        ? 'One uppercase letter'
                                        : '',
                                    style:
                                        GoogleFonts.inter(
                                              textStyle: Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                            )
                                            .copyWith(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                            )
                                            .copyWith(fontSize: 11.9),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/roundcheck.svg'),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  !RegExp(
                                        r'[0-9]',
                                      ).hasMatch(state.resetNewPassword.value)
                                      ? 'One number'
                                      : '',
                                  style:
                                      GoogleFonts.inter(
                                            textStyle: Theme.of(
                                              context,
                                            ).textTheme.bodyMedium,
                                          )
                                          .copyWith(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.primary,
                                          )
                                          .copyWith(fontSize: 11.9),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      bloc.add(ResetPasswordPressed());
                    },
                    child: Text(
                      AppLocalizations.of(context)?.resetPassword ?? '',
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
              ],
            ),
          ),
        );
      },
    );
  }
}
