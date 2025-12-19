import 'package:empireone_app/pages/sign_up/view/view.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  static const route = '/signup';

  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: SignupHeading(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
              child: SignupForm(),
            ),
          ),
        ],
      ),
    );
  }
}
