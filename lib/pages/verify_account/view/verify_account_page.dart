import 'package:empireone_app/pages/verify_account/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_account/view/view.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:empireone_app/services/account_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyAccountPage extends StatelessWidget {
  static const route = '/verify_account';

  const VerifyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AccountRepository(
            accountService: AccountService(
              baseUrl: 'https://empireone-bpo.com/api',
              baseUrl2: 'https://empireone-hris.com/api',
            ),
          ),
        ),
      ],
      child: BlocProvider(
        create: (context) => VerifyAccountBloc(
          initialState: VerifyAccountState(),
          accountRepository: RepositoryProvider.of<AccountRepository>(context),
        )..add(const VerificationScreenCreated()),
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
      ),
    );
  }
}
