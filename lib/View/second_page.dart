import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kidnet/View/login_page.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/secondimage.png"),
              fit: BoxFit.cover,
            ),
          ),

          child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Unlimited Enjoy", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),),
                SizedBox(height: 2,),
                Text("Easy to use", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),),
                SizedBox( height: 2, width: double.infinity,),
              
              Text("All of Netflix, starting at just",
              style: TextStyle( fontWeight: FontWeight.w400, fontSize: 13,color: Colors.white),),
               SizedBox(height: 2,),
               Text("Rs. 149",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.red),),
               SizedBox( height: 5,),
               Container( height: 44, width: 343,
               decoration: BoxDecoration( borderRadius: BorderRadius.circular(2),
               color:Color.fromRGBO(210, 47, 38, 1) 
               ),
                 child: TextButton(onPressed: (){
                  Get.to(LoginPage());
                 }, 
                 child: Text("Get Started", 
                 style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white ),)),
               )

               


                ],
            ),
          ),
        ),
      ),
    );
  }
}
