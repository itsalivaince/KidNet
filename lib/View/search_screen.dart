import 'package:flutter/material.dart';
import 'package:kidnet/Widgets/my_widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        body: Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 11),
          child: ListView(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      debugPrint(srchctr.text);
                    },
                    icon: Icon(Icons.search_sharp, size: 32),
                  ),
                  Loginbar(
                    "Search here",
                    Color.fromRGBO(41, 41, 41, 1),
                    srchctr,
                    height: 28,
                    width: 302,
                  ),
                ],
              ),

              SizedBox(height: 7),
              Text(
                "Movies & TV",
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
                  return Smgridcard();
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
