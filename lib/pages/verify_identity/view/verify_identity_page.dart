import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/reset_password/bloc/reset_password_state/reset_password_state.dart';
import 'package:empireone_app/pages/reset_password/view/view.dart';
import 'package:empireone_app/pages/verify_identity/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_identity/view/view.dart';
import 'package:empireone_app/pages/widgets/widgets.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class VerifyIdentityPage extends StatelessWidget {
  static const route = '/verify_identity';

  final VerifyIdentityState initialState;

  const VerifyIdentityPage({super.key, required this.initialState});

  Future<void> listenerVerifyIdentityOtp(
    BuildContext context,
    VerifyIdentityState state,
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
        context.push(
          ResetPasswordPage.route,
          extra: ResetPasswordState(emailResetPass: state.emailForgotPassVal),
        );
        break;
      case RequestStatus.failure:
        // Navigator.pop(context);
        showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: ShowDialogError(
                message: state.message,
                text: 'Verify Identity Failed',
              ),
            );
          },
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyIdentityBloc(
        initialState: initialState,
        accountRepository: RepositoryProvider.of<AccountRepository>(context),
      )..add(VerifyIdentityScreenCreated()),
      child: MultiBlocListener(
        listeners: [
          BlocListener<VerifyIdentityBloc, VerifyIdentityState>(
            listenWhen: (previous, current) =>
                previous.requestStatus != current.requestStatus,
            listener: (context, state) {
              listenerVerifyIdentityOtp(context, state);
            },
          ),
        ],
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
      ),
    );
  }
}
