import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/stepper/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class StepperContent extends StatelessWidget {
  const StepperContent({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<StepperBloc>();
    return BlocBuilder<StepperBloc, StepperState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.onTertiary,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    'BPO Terms & Conditions',
                    style:
                        GoogleFonts.mada(
                              textStyle: Theme.of(context).textTheme.bodySmall,
                            )
                            .copyWith(
                              color: Theme.of(context).colorScheme.tertiary,
                            )
                            .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Please carefully read the following terms and conditions before proceeding with your onboarding.',
                    style:
                        GoogleFonts.mada(
                              textStyle: Theme.of(context).textTheme.bodySmall,
                            )
                            .copyWith(
                              color: Theme.of(context).colorScheme.tertiary,
                            )
                            .copyWith(fontSize: 11)
                            .copyWith(fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onTertiary,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1. Compliance with Company Policies',
                      style:
                          GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              )
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              )
                              .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'You agree to comply with all company policies, procedures, and regulations, including confidentiality, security, and IT policies.',
                      style:
                          GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              )
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              )
                              .copyWith(fontSize: 11)
                              .copyWith(fontWeight: FontWeight.w200),
                    ),

                    Text(
                      '2. Confidentiality',
                      style:
                          GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              )
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              )
                              .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'All information, processes, and client data accessed during your employment or engagement is strictly confidential and must not be disclosed to unauthorized parties.',
                      style:
                          GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              )
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              )
                              .copyWith(fontSize: 11)
                              .copyWith(fontWeight: FontWeight.w200),
                    ),
                    Text(
                      '3. Data Security',
                      style:
                          GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              )
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              )
                              .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'You must follow the company’s security protocols when handling any system, tool, or client information.',

                      style:
                          GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              )
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              )
                              .copyWith(fontSize: 11)
                              .copyWith(fontWeight: FontWeight.w200),
                    ),
                    Text(
                      '4. Workplace Conduct',
                      style:
                          GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              )
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              )
                              .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'You are expected to maintain professional behavior, adhere to work schedules, and communicate effectively with team members and clients.',

                      style:
                          GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              )
                              .copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              )
                              .copyWith(fontSize: 11)
                              .copyWith(fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  onChanged: (value) {
                    bloc.add(CheckedBoxPressed(state.isCheckedTermsPriv));
                    // bloc.add(AgreementCheckBoxPressed(state.isChecked));
                  },
                  side: BorderSide(width: 0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(3),
                  ),
                  activeColor: Theme.of(context).colorScheme.primaryContainer,
                  value: state.isCheckedTermsPriv,
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
                          style:
                              GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              ).copyWith(
                                color: Theme.of(context).colorScheme.onTertiary,
                              ),
                          text:
                              '${AppLocalizations.of(context)?.imAgreeToThe} ',
                        ),
                        TextSpan(
                          text: 'Terms of Service',
                          style:
                              GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              ).copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                          // Use TapGestureRecognizer here for clicks in 2025
                        ),
                        TextSpan(
                          text: ' and ',
                          style: GoogleFonts.mada(
                            color: Theme.of(context).colorScheme.onTertiary,
                          ).copyWith(fontSize: 12),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style:
                              GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodySmall,
                              ).copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
