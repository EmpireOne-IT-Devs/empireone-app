import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/home_employee/home_employee.dart';
import 'package:empireone_app/pages/login/bloc/bloc.dart';
import 'package:empireone_app/pages/login/login.dart';
import 'package:empireone_app/pages/widgets/widgets.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:empireone_app/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login';

  const LoginPage({super.key});

  void listenerLogin(BuildContext context, LoginState state) {
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
        context.go(HomeEmployeePage.route);
        break;
      case RequestStatus.failure:
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (context) {
            print('here ${state.message}');
            return Center(
              child: ShowDialogError(
                message: state.message.toString(),
                text: AppLocalizations.of(context)?.loginFailed ?? '',
              ),
            );
          },
        );
        break;
    }
  }

  void listenerGoogleLogin(BuildContext context, LoginState state) {
    switch (state.googleSigninRequestStatus) {
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
        context.go(HomeEmployeePage.route);
        break;
      case RequestStatus.failure:
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: ShowDialogError(
                message: state.message.toString(),
                text: '',
              ),
            );
          },
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(
        googleRepository: RepositoryProvider.of<GoogleRepository>(context),
        initialState: const LoginState(),
        accountRepository: RepositoryProvider.of<AccountRepository>(context),
      ),
      child: MultiBlocListener(
        listeners: [
          BlocListener<LoginBloc, LoginState>(
            listenWhen: (previous, current) =>
                previous.requestStatus != current.requestStatus,
            listener: (context, state) => listenerLogin(context, state),
          ),
          BlocListener<LoginBloc, LoginState>(
            listenWhen: (previous, current) =>
                previous.googleSigninRequestStatus !=
                current.googleSigninRequestStatus,
            listener: (context, state) => listenerGoogleLogin(context, state),
          ),
        ],
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: LoginAppbar()),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: LoginHeading(),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                  child: LoginForm(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
