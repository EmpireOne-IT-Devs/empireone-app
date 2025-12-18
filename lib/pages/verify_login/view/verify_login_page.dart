import 'package:empireone_app/pages/verify_login/view/view.dart';
import 'package:flutter/material.dart';

class VerifyLoginPage extends StatelessWidget {
  static const route = '/verify_login';

  const VerifyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: VerifyLoginAppbar()),
          SliverToBoxAdapter(child: VerifyLoginHeading()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: VerifyLoginForm(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: VerifyLoginFooter(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
