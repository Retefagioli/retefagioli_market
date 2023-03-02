import 'package:flutter/material.dart';
import 'package:retefagioli_market/screens/screens.dart';
import 'package:go_router/go_router.dart';

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
      builder: (BuildContext contex, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      name: "home",
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
    ),
  ],
);
