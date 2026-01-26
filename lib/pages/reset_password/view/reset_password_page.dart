import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/password_reset/view/view.dart';
import 'package:empireone_app/pages/reset_password/bloc/bloc.dart';
import 'package:empireone_app/pages/reset_password/view/reset_password_appbar.dart';
import 'package:empireone_app/pages/reset_password/view/reset_password_form.dart';
import 'package:empireone_app/pages/reset_password/view/reset_password_heading.dart';
import 'package:empireone_app/pages/widgets/widgets.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordPage extends StatelessWidget {
  static const route = '/reset_password';

  final ResetPasswordState initialState;
  const ResetPasswordPage({super.key, required this.initialState});

  Future<void> listenerResetPassword(
    BuildContext context,
    ResetPasswordState state,
  ) async {
    print('error: ${state.message}');
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
        context.push(PasswordResetPage.route);
        break;
      case RequestStatus.failure:
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: ShowDialogError(
                message: state.message,
                text: AppLocalizations.of(context)?.resetPasswordFailed ?? '',
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
      create: (context) => ResetPasswordBloc(
        initialState: initialState,
        accountRepository: RepositoryProvider.of<AccountRepository>(context),
      ),
      child: MultiBlocListener(
        listeners: [
          BlocListener<ResetPasswordBloc, ResetPasswordState>(
            listenWhen: (previous, current) =>
                previous.requestStatus != current.requestStatus,
            listener: (context, state) {
              listenerResetPassword(context, state);
            },
          ),
        ],
        child: Scaffold(
          body: const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: ResetPasswordAppbar()),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: ResetPasswordHeading(),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ResetPasswordForm(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
