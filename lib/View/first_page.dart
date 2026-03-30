import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:kidnet/View/second_page.dart';
import 'package:kidnet/config/routes/rote_path.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {
      context.go(RoutePath.secondPage);
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png", height: 95, width: 287),
              // TextButton(
              //   onPressed: () {

              //     // Get.to(SecondPage());
              //     context.go(RoutePath.secondPage);
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));
              //   },
              //   child: Text("Next"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
