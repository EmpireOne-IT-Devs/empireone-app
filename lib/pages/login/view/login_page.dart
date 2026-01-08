import 'package:empireone_app/pages/login/bloc/bloc.dart';
import 'package:empireone_app/pages/login/login.dart';
import 'package:empireone_app/repositories/repositories.dart';
import 'package:empireone_app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<GoogleRepository>(
          create: (context) => GoogleRepository(
            googleService: GoogleService(GoogleSignIn(), '', clientId: ''),
          ),
        ),
      ],
      child: BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(
          googleRepository: GoogleRepository(
            googleService: GoogleService(GoogleSignIn(), '', clientId: ''),
          ),
          initialState: const LoginState(),
        ),
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
