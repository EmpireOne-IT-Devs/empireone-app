import 'package:empireone_app/pages/password_reset/view/view.dart';
import 'package:flutter/material.dart';

class PasswordResetPage extends StatelessWidget {
  static const route = '/password_reset';
  const PasswordResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: PasswordResetBody(),
      ),
    );
  }
}
