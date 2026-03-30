import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text("My App Home"),
      ),
      backgroundColor: Colors.pink,

      body: Center(child: Text("HomePage")),
    );
  }
}
