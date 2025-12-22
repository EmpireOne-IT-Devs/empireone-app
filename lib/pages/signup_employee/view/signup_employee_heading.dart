import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class SignupEmployeeHeading extends StatelessWidget {
  const SignupEmployeeHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/empireonelogo.png'),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            AppLocalizations.of(context)?.welcomeBack ?? '',
            style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ],
    );
  }
}
