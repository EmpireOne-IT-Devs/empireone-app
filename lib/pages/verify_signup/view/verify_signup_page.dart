import 'package:empireone_app/pages/verify_signup/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_signup/view/view.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifySignupPage extends StatelessWidget {
  static const route = '/verify_signup';
  final VerifySignupState initialState;

  const VerifySignupPage({super.key, required this.initialState});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifySignupBloc(
        initialState: initialState,
        accountRepository: RepositoryProvider.of<AccountRepository>(context),
      )..add(const VerifySignupScreenCreated()),
      child: const Scaffold(
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
      ),
    );
  }
}
