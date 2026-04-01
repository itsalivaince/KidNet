import 'package:flutter/material.dart';
import 'package:kidnet/Utils/images.dart';
import 'package:kidnet/p2/product_details.dart';

class HeroTag extends StatelessWidget {
  const HeroTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // ListTile(
        //   onTap: () {
        //   Navigator.push(context, MaterialPageRoute(builder: (context) => ProdcutDetails(),));
        //   },
        //   leading: Image.asset(AppImages.image1),
        //   title: Text("Full name"),
        // ),
      ],),
    );
  }
}