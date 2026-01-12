import 'package:empireone_app/pages/forgot_password/forgot_password.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  static const route = '/forgot_password';
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: ForgotPasswordAppbar()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: ForgotPasswordHeading(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: ForgotPasswordForm(),
            ),
          ),
          SliverToBoxAdapter(child: ForgotPasswordFooter()),
        ],
      ),
    );
  }
}
