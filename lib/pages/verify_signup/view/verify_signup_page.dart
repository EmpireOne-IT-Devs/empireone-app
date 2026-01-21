import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/login/widgets/widgets.dart';
import 'package:empireone_app/pages/verify_signup/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_signup/view/view.dart';
import 'package:empireone_app/pages/widgets/circular_progress_dialog.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../home_employee/view/view.dart';

class VerifySignupPage extends StatelessWidget {
  static const route = '/verify_signup';
  final VerifySignupState initialState;

  const VerifySignupPage({super.key, required this.initialState});

  Future<void> listenerVerifyOtp(
    BuildContext context,
    VerifySignupState state,
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
        // Navigator.pop(context);
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
    return BlocProvider(
      create: (context) => VerifySignupBloc(
        initialState: initialState,
        accountRepository: RepositoryProvider.of<AccountRepository>(context),
      )..add(const VerifySignupScreenCreated()),
      child: BlocListener<VerifySignupBloc, VerifySignupState>(
        listener: (context, state) {
          listenerVerifyOtp(context, state);
        },
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
      ),
    );
  }
}
