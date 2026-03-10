import 'package:flutter/material.dart';
import 'package:kidnet/Utils/images.dart';
import 'package:kidnet/Widgets/my_widgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //TextEditingController nameCtr = TextEditingController();
  //TextEditingController passctr = TextEditingController();

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
            Loginbar(
              "Email or Phone",
              Color.fromARGB(255, 81, 79, 79),
              nameCtr,
            ),
            SizedBox(height: 20),
            Loginbar("Password", Color.fromARGB(255, 81, 79, 79), passctr),
            SizedBox(height: 10),

            Loginbtn(Color.fromRGBO(229, 9, 20, 100), "Sign in"),

            SizedBox(height: 20),
            Text("OR", style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 20),
            Container(
              height: 33,
              width: 292,
              decoration: BoxDecoration(color: Color.fromARGB(255, 81, 79, 79)),
              child: TextButton(
                onPressed: () {
                  debugPrint("Sign in code");
                },
                child: Text(
                  "Use a sign in code",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                debugPrint("Forgot Password");
              },
              child: Text(
                "Fogot Password",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
