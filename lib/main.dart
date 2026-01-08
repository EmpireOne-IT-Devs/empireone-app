import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/pages/home_employee/view/view.dart';
import 'package:empireone_app/pages/login/view/view.dart';
import 'package:empireone_app/pages/login_employee/view/view.dart';
import 'package:empireone_app/pages/reset_password/view/view.dart';
import 'package:empireone_app/pages/ticket/ticket.dart';
import 'package:empireone_app/repositories/google_repository.dart';
import 'package:empireone_app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'pages/forgot_password/view/view.dart';
import 'pages/password_reset/view/view.dart';
import 'pages/sign_up/view/view.dart';
import 'pages/signup_employee/view/view.dart';
import 'pages/verify_account/view/view.dart';
import 'pages/verify_login/view/view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  var baseUrl = 'https://empireone-bpo.com/api/';

  final List<String> scopes = ['email', 'profile'];
  final String clientId =
      '301631048424-pdrvq2jm03jhca6d3abtp63jqmliuobo.apps.googleusercontent.com';

  runApp(
    EmpireOne(
      googleRepository: GoogleRepository(
        googleService: GoogleService(
          GoogleSignIn(scopes: scopes),
          baseUrl,
          clientId: clientId,
        ),
      ),
    ),
  );
}

class EmpireOne extends StatelessWidget {
  final GoogleRepository googleRepository;
  const EmpireOne({super.key, required this.googleRepository});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'EmpireOne',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF1329A9),
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF1329A9),
          onPrimary: Color(0xFF374151),
          inversePrimary: Color(0xFFFFF5E9),
          secondary: Color(0xFF337ace),
          onSecondary: Color(0xFF98DED9),
          error: Color(0xFFFF6B6B),
          onError: Color(0xFF1329A9),
          surface: Color(0xFF1329A9),
          onSurface: Color(0xFFFFFFFF),
          onSurfaceVariant: Color(0xFFCCCCCC),
          onTertiary: Color(0xFF4B5563),
          primaryContainer: Color(0xFFF9FCFF),
          tertiary: Color(0xFF000000),
          inverseSurface: Color(0xFFF4F4F6),
          surfaceContainer: Color(0XFF34A853),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 64, fontWeight: FontWeight.w400),
          displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
          displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
          headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          labelSmall: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        appBarTheme: AppBarTheme(toolbarHeight: 50, elevation: 0),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(316, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            foregroundColor: const Color(0xFFFFFFFF),
            // minimumSize: Size(double.infinity, 65),
            minimumSize: const Size(double.infinity, 48),
            elevation: 0,
            backgroundColor: Color(0xFF1329A9),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0.5, color: Color(0xFF4B5563)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.5, color: Color(0xFF4B5563)),
            borderRadius: BorderRadius.circular(10),
          ),
          // contentPadding: EdgeInsets.symmetric(vertical: 15),
          isDense: true, // Crucial for manual height control
          contentPadding: const EdgeInsets.fromLTRB(15, 16, 15, 16),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0.5, color: Color(0xFF4B5563)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0.5, color: Color(0xFF4B5563)),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            fixedSize: const Size(316, 52),
            minimumSize: const Size(double.infinity, 56),
            side: BorderSide(width: 2, color: Color(0xFF1329A9)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return TicketPage();
        // return AnimatedSplashScreen(
        //   splash: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 32),
        //     child: Image.asset('assets/empireone.png'),
        //   ),
        //   nextScreen: SigninPage(),
        //   splashIconSize: 2000,
        //   centered: true,
        //   backgroundColor: Colors.black,
        //   duration: 3100,
        // );
      },
      routes: <RouteBase>[
        GoRoute(
          path: VerifyLoginPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const VerifyLoginPage();
          },
        ),
        GoRoute(
          path: LoginEmployeePage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const LoginEmployeePage();
          },
        ),
        GoRoute(
          path: LoginPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: SignupPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const SignupPage();
          },
        ),
        GoRoute(
          path: SignupEmployeePage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const SignupEmployeePage();
          },
        ),
        GoRoute(
          path: VerifyAccountPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const VerifyAccountPage();
          },
        ),
        GoRoute(
          path: ForgotPasswordPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const ForgotPasswordPage();
          },
        ),
        GoRoute(
          path: ResetPasswordPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const ResetPasswordPage();
          },
        ),
        GoRoute(
          path: PasswordResetPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const PasswordResetPage();
          },
        ),
        GoRoute(
          path: HomeEmployeePage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const HomeEmployeePage();
          },
        ),
        GoRoute(
          path: TicketPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const TicketPage();
          },
        ),
      ],
    ),
  ],
);
