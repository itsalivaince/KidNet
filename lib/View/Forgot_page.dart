import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kidnet/View/login_page.dart';
import 'package:kidnet/Widgets/Buttons/buttons.dart';
import 'package:kidnet/Widgets/Text%20Bar/text_bar.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,

        body: Padding(
          padding: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 10),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
           children: [
            Iconbutton( icon: Icons.arrow_back,Icolor: Colors.white,height:10,width: 10,onPressed: () {
              Get.to(LoginPage());
            },  ),
            SizedBox(width: 20,),
           Image.asset("assets/images/logo.png",height: 28,width: 103,)

           ],
            ),

            SizedBox( height: 60,),
            Text("Enter the code we have sent to your email or phone",
            style:TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 25,) ,),
            SizedBox(height: 40,),
            Textbar("Enter the code", Color.fromARGB(255, 81, 79, 79), frgtctr),
            SizedBox(height: 40,),
            Text("The Code will expire in 15 minutes",style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w400),)



          ],
          ),
        ),
      ),
    );
  }
}