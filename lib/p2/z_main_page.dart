import 'package:flutter/material.dart';
import 'package:kidnet/p2/home_page.dart';
import 'package:kidnet/p2/profile_page%20copy%202.dart';
import 'package:kidnet/p2/shop_page%20copy.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List screens = [HomePage(), ProfilePage(), ShopPage()];

  int crruentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("My App Main"),
      // ),
      body: screens[crruentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: crruentPageIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.shade400,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Shop"),
        ],
        onTap: (value) {
          setState(() {
            crruentPageIndex = value;
          });
        },
      ),
    );
  }
}
