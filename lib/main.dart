import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kidnet/View/first_page.dart';
import 'package:kidnet/View/home_screen.dart';
import 'package:kidnet/config/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      routerConfig: appRouter,
      

      

      //home SecondPage(),
      // home: FirstPage(),
      //home: LoginPage(),
      // home: HomeScreen(),
      //home: SearchScreen(),
      //home: NewHot(),
      //home: SeriesPage(),
      //home: ForgotPage(),
    );
  }
}
