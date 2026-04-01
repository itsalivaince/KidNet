import 'package:flutter/material.dart';
import 'package:kidnet/Utils/images.dart';
import 'package:kidnet/p2/product_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text("My App Home"),
      ),
      backgroundColor: Colors.pink,

      body: Column(
        children: [
                  ListTile(
          onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProdcutDetails( pName: "Mobile", ptag: 'pp',), ));
          },
          leading: Hero(tag: "pp", child: Image.asset(AppImages.image1)),
          title: Text("Full name"),
        ),

          Center(child: Text("HomePage")),
        ],
      ),
    );
  }
}
