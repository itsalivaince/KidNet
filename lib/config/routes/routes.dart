import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kidnet/View/first_page.dart';
import 'package:kidnet/View/login_page.dart';
import 'package:kidnet/View/second_page.dart';
import 'package:kidnet/config/routes/rote_path.dart';
import 'package:kidnet/config/routes/rout_name.dart';
import 'package:kidnet/p2/z_main_page.dart';

final GoRouter appRouter = GoRouter(
   initialLocation: RoutePath.firstPage,
  //initialLocation: RoutePath.mainpage,

  routes: [
    /// FirstPage
    GoRoute(
      path: RoutePath.firstPage,
      name: RouteName.firstPage,
      builder: (context, state) => const FirstPage(),
    ),
    /// SecondPage
    GoRoute(
      path: RoutePath.secondPage,
      name: RouteName.secondPage,
      builder: (context, state) => const SecondPage(),
    ),
    /// LoginPage
    GoRoute(
      path: RoutePath.loginPage,
      name: RouteName.loginPage,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: RoutePath.mainpage,
      name: RouteName.mainpage,
      builder: (context, state) =>  MainPage(),
    ),

    /// 🔴 Error Handling (Not Found Page)
    // errorBuilder: (context, state) => const NotFoundPage(),
  ],
);
