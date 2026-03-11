import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kidnet/View/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

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
              TextButton(
                onPressed: () {
                 
                  Get.to(SecondPage());
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));
                },
                child: Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
