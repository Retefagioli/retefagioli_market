import 'package:flutter/material.dart';
import 'package:retefagioli_market/screens/screens.dart';
import 'package:go_router/go_router.dart';
import 'package:retefagioli_market/widgets/custom_transition_page.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const EntryScreen();
      },
    ),
    GoRoute(
      name: "login",
      path: "/login",
      builder: (BuildContext contex, GoRouterState state) =>
          const LoginScreen(),
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const LoginScreen(),
      ),
    ),
    GoRoute(
      name: "home",
      path: '/home',
      builder: (BuildContext context, GoRouterState state) => HomeScreen(),
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: HomeScreen(),
      ),
    ),
    GoRoute(
      name: "register",
      path: "/register",
      builder: (BuildContext context, GoRouterState state) =>  RegisterScreen(),
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: RegisterScreen(),
      ),
    ),
  ],
);
