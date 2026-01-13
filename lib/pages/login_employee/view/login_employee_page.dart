import 'package:empireone_app/pages/login_employee/login_employee.dart';
import 'package:flutter/material.dart';

class LoginEmployeePage extends StatelessWidget {
  static const route = '/login_employee';

  const LoginEmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: LoginEmployeeAppbar()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: LoginEmployeeHeading(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 32, 16, 0),
              child: LoginEmployeeForm(),
            ),
          ),
        ],
      ),
    );
  }
}
