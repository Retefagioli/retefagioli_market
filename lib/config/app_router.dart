import 'package:flutter/material.dart';
import 'package:retefagioli_market/screens/screens.dart';
import 'package:go_router/go_router.dart';
import 'package:retefagioli_market/widgets/custom_transition_page.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const RootScreen();
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
      name: "register",
      path: "/register",
      builder: (BuildContext context, GoRouterState state) =>  const RegisterScreen(),
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const RegisterScreen(),
      ),
    ),
  ],
);
