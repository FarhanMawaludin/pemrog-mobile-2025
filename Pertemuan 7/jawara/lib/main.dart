import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jawara/presentations/pages/login/login_page.dart';
import 'package:jawara/presentations/pages/onboarding_page.dart';
import 'package:jawara/presentations/pages/register/register_akun_page.dart';
import 'package:jawara/presentations/pages/register/register_data_pribadi_page.dart';
import 'package:jawara/presentations/pages/register/register_rumah_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: '/register/akun',
        builder: (context, state) => const RegisterAkunPage(),
      ),
      GoRoute(
        path: '/register/rumah',
        builder: (context, state) => const RegisterRumahPage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),

    ]
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,  
    );
  }
}
