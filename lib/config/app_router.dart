import 'package:flutter/material.dart';
import 'package:retefagioli_market/screens/screens.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: <GoRoute>[
  GoRoute(
    path: "/",
    builder: (BuildContext context, GoRouterState state) {
      return const LoginScreen();
    },
  ),
  GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },),
],);
