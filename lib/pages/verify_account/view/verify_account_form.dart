import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/verify_account/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_account/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyAccountForm extends StatefulWidget {
  const VerifyAccountForm({super.key});

  @override
  State<VerifyAccountForm> createState() => _VerifyAccountFormState();
}

class _VerifyAccountFormState extends State<VerifyAccountForm> {
  List<TextEditingController> controllers = [];
  List<FocusNode> focusNodes = [];

  void lengthListener(BuildContext context, VerifyAccountState state) {
    controllers = List.generate(
      state.verificationFields.length,
      (index) => TextEditingController(),
    );
    focusNodes = List.generate(
      state.verificationFields.length,
      (index) => FocusNode(),
    );
  }

  void valueListener(
    BuildContext context,
    VerifyAccountState state,
    int index,
  ) {
    var value = state.verificationFields[index].value;
    print('value $value');
    print('statevalue: ${state.verificationFields[index].value}');
    print('value length: ${value.length}');
    print('index: $index');
    if (value.length == 1 && index < 5) {
      FocusScope.of(context).nextFocus();
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).previousFocus();
    }
    // if (value.isNotEmpty) {
    //   if (index + 1 == focusNodes.length) {
    //     FocusScope.of(context).unfocus();
    //   } else {
    //     focusNodes[index + 1].requestFocus();
    //   }
    // } else if (value.isEmpty) {
    //   if (index == 0) {
    //   } else {
    //     controllers[index - 1].value = const TextEditingValue(
    //       text: '\u200b',
    //       selection: TextSelection(baseOffset: 1, extentOffset: 1),
    //     );
    //     focusNodes[index - 1].requestFocus();
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<VerifyAccountBloc>();
    return BlocBuilder<VerifyAccountBloc, VerifyAccountState>(
      builder: (context, state) {
        return MultiBlocListener(
          listeners: [
            BlocListener<VerifyAccountBloc, VerifyAccountState>(
              listenWhen: (previous, current) =>
                  previous.verificationFields.length !=
                  current.verificationFields.length,
              listener: (context, state) => lengthListener(context, state),
            ),
            ...List<BlocListener>.generate(state.verificationFields.length, (
              index,
            ) {
              return BlocListener<VerifyAccountBloc, VerifyAccountState>(
                listenWhen: (previous, current) =>
                    previous.verificationFields[index].value !=
                    current.verificationFields[index].value,
                listener: (context, state) =>
                    valueListener(context, state, index),
              );
            }),
          ],
          child: Container(
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
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onTertiary,
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
                      textStyle: Theme.of(context).textTheme.labelSmall
                          ?.copyWith(
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
                      children: List.generate(controllers.length, (index) {
                        return SizedBox(
                          width: 48,
                          height: 56,
                          child: VerifyAccountField(
                            controller: controllers[index],
                            focusNode: focusNodes[index],
                            onChanged: (value) {
                              bloc.add(VerificationFieldChanged(index, value));
                            },
                            textAlign: TextAlign.center,
                            inputDecoration: InputDecoration(
                              focusColor: Theme.of(
                                context,
                              ).colorScheme.onPrimary,
                              enabledBorder:
                                  state.verificationFields[index].value.isEmpty
                                  ? (Theme.of(
                                              context,
                                            ).inputDecorationTheme.enabledBorder
                                            as OutlineInputBorder)
                                        .copyWith(
                                          borderSide: BorderSide(
                                            width: 2,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary
                                                .withValues(alpha: 0.20),
                                          ),
                                        )
                                  : (Theme.of(
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
                                  state.verificationFields[index].value.isEmpty
                                  ? (Theme.of(
                                              context,
                                            ).inputDecorationTheme.focusedBorder
                                            as OutlineInputBorder)
                                        .copyWith(
                                          borderSide: BorderSide(
                                            width: 2,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary
                                                .withValues(alpha: 0.20),
                                          ),
                                        )
                                  : (Theme.of(
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
                              textStyle: Theme.of(
                                context,
                              ).textTheme.titleMedium,
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
                          textStyle: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
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
                          textStyle: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
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
                      onPressed: () {
                        bloc.add(VerifyAccountPressed());
                      },
                      child: Text(
                        'Verify Code',
                        style: GoogleFonts.inter(
                          textStyle: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
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
          ),
        );
      },
    );
  }
}
