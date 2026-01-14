import 'package:empireone_app/pages/verify_account/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_account/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyAccountPage extends StatelessWidget {
  static const route = '/verify_account';

  const VerifyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          VerifyAccountBloc(initialState: VerifyAccountState()),
      child: const Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: VerifyAccountAppbar()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 48),

                child: VerifyAccountHeading(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 32),
                child: VerifyAccountForm(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 48),
                child: VerifyAccountFooter(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
