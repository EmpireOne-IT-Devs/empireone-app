import 'package:empireone_app/models/result/result.dart';
import 'package:empireone_app/pages/forgot_password/bloc/bloc.dart';
import 'package:empireone_app/pages/forgot_password/forgot_password.dart';
import 'package:empireone_app/pages/login/widgets/show_dialog_error.dart';
import 'package:empireone_app/pages/verify_identity/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_identity/view/view.dart';
import 'package:empireone_app/pages/widgets/circular_progress_dialog.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordPage extends StatelessWidget {
  static const route = '/forgot_password';
  const ForgotPasswordPage({super.key});

  void listenerForgotPass(BuildContext context, ForgotPasswordState state) {
    switch (state.requestStatus) {
      case RequestStatus.waiting:
        break;
      case RequestStatus.inProgress:
        showDialog(
          context: context,
          builder: (context) {
            return const Center(child: CircularProgressDialog());
          },
        );
        break;
      case RequestStatus.success:
        Future.delayed(const Duration(milliseconds: 3000));
        print('emailsend: ${state.emailForgotPassVal.value}');
        context.push(
          VerifyIdentityPage.route,
          extra: VerifyIdentityState(
            emailForgotPassVal: state.emailForgotPassVal.value,
          ),
        );
        break;
      case RequestStatus.failure:
        // Navigator.pop(context);
        showDialog(
          context: context,
          builder: (context) {
            return Center(child: ShowDialogError(message: ''));
          },
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
      create: (context) => ForgotPasswordBloc(
        initialState: ForgotPasswordState(),
        accountRepository: RepositoryProvider.of<AccountRepository>(context),
      ),
      child: BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
        listener: (context, state) => listenerForgotPass(context, state),
        child: const Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: ForgotPasswordAppbar()),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: ForgotPasswordHeading(),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: ForgotPasswordForm(),
                ),
              ),
              SliverToBoxAdapter(child: ForgotPasswordFooter()),
            ],
          ),
        ),
      ),
    );
  }
}
