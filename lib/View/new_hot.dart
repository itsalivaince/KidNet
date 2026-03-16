import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kidnet/View/series_page.dart';
import 'package:kidnet/Widgets/Movie%20Cards/Standard.dart';


class NewHot extends StatelessWidget {
  const NewHot({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 11),
          child: ListView(
            children: [
              
              Text(
                "New & Hot",
                style: TextStyle(
                  color: Color.fromRGBO(230, 230, 230, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  letterSpacing: -0.25,
                ),
              ),
              SizedBox(height: 7),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.65,
                  crossAxisCount: 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Smcard(height: 0,width: 0,);
                },
              ),
            ],
          ),
        ),

         bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          onTap: (value) {},
          selectedItemColor: Color.fromRGBO(255, 255, 255, 1),
          unselectedItemColor: Color.fromRGBO(255, 255, 255, 0.74),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.new_releases_rounded),
              label: "New & Hot",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions_rounded),
              label: "Fast laughs",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.downloading_sharp),
              label: "Downloads",
            ),
          ],
        ),
      ),
    );
  }
}
