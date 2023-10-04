import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_mvc/core/settings/settings.dart';
import 'package:riverpod_mvc/core/utils/route_name_consts.dart';
import 'package:riverpod_mvc/future/home/home_page.dart';
import 'package:riverpod_mvc/future/login/login_page.dart';

BuildContext get globalCtx =>
    routerSettings.routerDelegate.navigatorKey.currentContext!;

final GoRouter routerSettings = GoRouter(
  redirect: (BuildContext context, GoRouterState state) async {
    Settings settings = Settings();
    await settings.onInit();

    if (settings.token == '') {
      return RouteNameConstants.login;
    }
    return null;
  },
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: RouteNameConstants.login,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
  ],
);
