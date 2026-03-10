import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea( child: Scaffold( 

   body:  
   Container(
decoration: BoxDecoration(
  
  image: DecorationImage(image: AssetImage("assets/images/secondimage.png"),
  fit: BoxFit.cover
  )

  
),







   ),


   

    ),
    
    );
  }
}