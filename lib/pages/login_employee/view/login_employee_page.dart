import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/login/widgets/widgets.dart';
import 'package:empireone_app/pages/login_employee/bloc/bloc.dart';
import 'package:empireone_app/pages/login_employee/login_employee.dart';
import 'package:empireone_app/pages/verify_account/bloc/bloc.dart';
import 'package:empireone_app/pages/verify_account/view/view.dart';
import 'package:empireone_app/pages/widgets/circular_progress_dialog.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginEmployeePage extends StatelessWidget {
  static const route = '/login_employee';

  const LoginEmployeePage({super.key});

  void listenerLoginEmployeePressed(
    BuildContext context,
    LoginEmployeeState state,
  ) {
    switch (state.requestStatusSendOtp) {
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
          VerifyAccountPage.route,
          extra: VerifyAccountState(email: state.eogsEmail),
        );
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
    return BlocProvider<LoginEmployeeBloc>(
      create: (context) => LoginEmployeeBloc(
        initialState: LoginEmployeeState(),
        accountRepository: RepositoryProvider.of<AccountRepository>(context),
      ),
      child: BlocListener<LoginEmployeeBloc, LoginEmployeeState>(
        listener: (context, state) =>
            listenerLoginEmployeePressed(context, state),
        child: const Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: LoginEmployeeAppbar()),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 48),
                  child: LoginEmployeeHeading(),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 32, 16, 0),
                  child: LoginEmployeeForm(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
