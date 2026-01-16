import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/login/widgets/show_dialog_error.dart';
import 'package:empireone_app/pages/sign_up/bloc/bloc.dart';
import 'package:empireone_app/pages/sign_up/view/view.dart';
import 'package:empireone_app/pages/verify_signup/view/view.dart';
import 'package:empireone_app/pages/widgets/circular_progress_dialog.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatelessWidget {
  static const route = '/signup';

  const SignupPage({super.key});

  void listenerSignup(BuildContext context, SignupState state) {
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
        Future.delayed(const Duration(milliseconds: 3000));
        context.push(VerifySignupPage.route);
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
    return BlocProvider(
      create: (context) => SignupBloc(
        initialState: SignupState(),
        accountRepository: RepositoryProvider.of<AccountRepository>(context),
      ),
      child: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) => listenerSignup(context, state),
        child: Scaffold(
          appBar: AppBar(),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 48),
                  child: SignupHeading(),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                  child: SignupForm(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
