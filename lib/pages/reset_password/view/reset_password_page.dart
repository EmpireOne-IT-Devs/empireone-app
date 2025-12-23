import 'package:empireone_app/pages/reset_password/bloc/bloc.dart';
import 'package:empireone_app/pages/reset_password/view/reset_password_appbar.dart';
import 'package:empireone_app/pages/reset_password/view/reset_password_form.dart';
import 'package:empireone_app/pages/reset_password/view/reset_password_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordPage extends StatelessWidget {
  static const route = 'reset_password';

  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ResetPasswordBloc(initialState: ResetPasswordState()),
      child: Scaffold(
        body: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: ResetPasswordAppbar()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: ResetPasswordHeading(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ResetPasswordForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
