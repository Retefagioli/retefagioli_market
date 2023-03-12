import 'package:flutter/material.dart';
import 'package:retefagioli_market/screens/screens.dart';
import 'package:go_router/go_router.dart';
import 'package:retefagioli_market/widgets/custom_transition_page.dart';

final shellRoutesNames = <String>[
  "/",
  "/search",
  "/boh",
  "/profile",
];

final _rootNavigationKey = GlobalKey<NavigatorState>();
final _shellNavigationKey = GlobalKey<NavigatorState>();
final GoRouter router = GoRouter(
  initialLocation: "/",
  navigatorKey: _rootNavigationKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigationKey,
      builder: (context, state, child) {
        return RootScreen(child: child);
      },
      routes: [
        GoRoute(
          path: "/",
          pageBuilder: (context, state) => NoTransitionPage(
            child: HomeScreen(),
          ),
        ),
        GoRoute(
          path: "/profile",
          pageBuilder: (context, state) => NoTransitionPage(
            child: ProfileScreen(),
          ),
        ),
      ],
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
      builder: (BuildContext context, GoRouterState state) =>
          const RegisterScreen(),
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const RegisterScreen(),
      ),
    ),
  ],
);
