import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
       backgroundColor: Color(0xFF000000),
       body:Center(
       child: Image.asset("assets/images/logo.png", height: 95,  width: 287,),


       ),

      ),
    );
  }
}