import 'package:flutter/material.dart';

class LoginEmployeeHeading extends StatelessWidget {
  const LoginEmployeeHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/empireonelogo.png'),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'Welcome back!',
            style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ],
    );
  }
}
