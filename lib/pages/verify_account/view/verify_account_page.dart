import 'package:empireone_app/models/result/result.dart';
import 'package:empireone_app/pages/home_employee/view/view.dart';
import 'package:empireone_app/pages/login/widgets/show_dialog_error.dart';
import 'package:empireone_app/pages/verify_account/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_account/view/view.dart';
import 'package:empireone_app/pages/widgets/circular_progress_dialog.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:empireone_app/services/account_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class VerifyAccountPage extends StatelessWidget {
  static const route = '/verify_account';

  final VerifyAccountState initialState;

  const VerifyAccountPage({super.key, required this.initialState});

  Future<void> listenerVerifyOtp(
    BuildContext context,
    VerifyAccountState state,
  ) async {
    switch (state.requestStatus) {
      case RequestStatus.waiting:
        break;
      case RequestStatus.inProgress:
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const Center(child: CircularProgressDialog());
          },
        );
        break;
      case RequestStatus.success:
        Navigator.of(context, rootNavigator: true).pop();
        Future.delayed(const Duration(milliseconds: 3000));
        context.push(HomeEmployeePage.route);
        break;
      case RequestStatus.failure:
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (context) {
            return Center(child: ShowDialogError(message: state.message));
          },
        );
        break;
    }
  }

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
          initialState: initialState,
          accountRepository: RepositoryProvider.of<AccountRepository>(context),
        )..add(const VerificationScreenCreated()),
        child: BlocListener<VerifyAccountBloc, VerifyAccountState>(
          listener: (context, state) {
            listenerVerifyOtp(context, state);
          },
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
      ),
    );
  }
}
