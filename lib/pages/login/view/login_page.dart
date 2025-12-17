import 'package:empireone_app/pages/login/login.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: LoginAppbar()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: LoginHeading(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
              child: LoginForm(),
            ),
          ),
          // SliverFillRemaining(
          //   hasScrollBody: false,
          //   child: Align(
          //     alignment: Alignment.bottomCenter,
          //     child: Padding(
          //       padding: EdgeInsets.fromLTRB(48, 0, 48, 16),
          //       child: LoginFooter(),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
