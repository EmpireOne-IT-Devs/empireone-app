import 'package:empireone_app/pages/signup_employee/view/view.dart';
import 'package:flutter/material.dart';

class SignupEmployeePage extends StatelessWidget {
  static const route = '/signup_employee';
  const SignupEmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SignupEmployeeAppbar()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),

              child: SignupEmployeeHeading(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 32),

              child: SignupEmployeeForm(),
            ),
          ),
        ],
      ),
    );
  }
}
