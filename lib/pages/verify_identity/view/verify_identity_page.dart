import 'package:empireone_app/pages/verify_identity/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_identity/view/view.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyIdentityPage extends StatelessWidget {
  static const route = '/verify_identity';

  final VerifyIdentityState initialState;

  const VerifyIdentityPage({super.key, required this.initialState});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyIdentityBloc(
        initialState: initialState,
        accountRepository: RepositoryProvider.of<AccountRepository>(context),
      )..add(VerifyIdentityScreenCreated()),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: VerifyIdentityAppbar()),
            SliverToBoxAdapter(child: VerifyIdentityHeading()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 32),
                child: VerifyIdentityForm(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 48),
                child: VerifyIdentityFooter(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
