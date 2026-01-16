import 'package:empireone_app/pages/verify_signup/view/view.dart';
import 'package:flutter/material.dart';

class VerifySignupPage extends StatelessWidget {
  static const route = '/verify_signup';

  const VerifySignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: VerifySignupAppbar()),
          SliverToBoxAdapter(child: VerifySignupHeading()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: VerifySignupForm(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: VerifySignupFooter(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
