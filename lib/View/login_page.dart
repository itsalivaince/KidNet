import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kidnet/Utils/images.dart';
import 'package:kidnet/View/Forgot_page.dart';
import 'package:kidnet/View/home_screen.dart';
import 'package:kidnet/Widgets/Buttons/buttons.dart';
import 'package:kidnet/Widgets/Text%20Bar/text_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final testForm = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  //TextEditingController nameCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(AppImages.logo, height: 28, width: 103),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.only(left: 30, top: 150, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Form(
              key: testForm,
              child: Container(
                width: 292,
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      controller: nameCtr,
                      decoration: InputDecoration(
                        hint: Padding(
                          padding: EdgeInsets.zero,
                          child: Text(
                            "",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        label: Padding(
                          padding: EdgeInsets.zero,
                          child: Text(
                            "Email or Phone",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(),
                        ),
                        filled: true,
                        fillColor: Color.fromARGB(255, 81, 79, 79),
                      ),
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return "Field is empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 48,
                      width: 292,
                      child: TextFormField(
                        controller: passctr,
                        decoration: InputDecoration(
                          hint: Padding(
                            padding: EdgeInsets.zero,
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          label: Padding(
                            padding: EdgeInsets.zero,
                            child: Text(
                              "Password",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(),
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 81, 79, 79),
                        ),
                        validator: (v) {
                          if (v == null || v.isEmpty) {
                            return "Password cannot be empty";
                          } else if (v.length < 5) {
                            return "Password must be at least 5 characters long";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

       
            Textbutton(height: 38,width: 292,Ccolor: Color.fromRGBO(229, 9, 20, 100),text: "Sign in",fcolor: Colors.white,  onPressed: () {
                if (testForm.currentState!.validate()) {
                  debugPrint("Submited");
                  Get.to(HomeScreen());
                } else {
                  debugPrint("error");
                }
              },),

            SizedBox(height: 20),
            Text("OR", style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 20),
          
            Textbutton(height:33,width: 292,Ccolor: Color.fromARGB(255, 81, 79, 79),text: "Use a sign in code",fcolor: Colors.white,fontWeight:.w600,onPressed: (){Get.to(ForgotPage());} ),
            SizedBox(height: 20),
         Textbutton(text: "Forgot Password",fcolor: Colors.white,onPressed: (){
          Get.to(ForgotPage());
         })
          ],
        ),
      ),
    );
  }
}
