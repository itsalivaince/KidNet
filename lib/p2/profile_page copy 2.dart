import 'package:flutter/material.dart';
import 'package:kidnet/p2/sub_pages/edit_page.dart';
import 'package:kidnet/p2/sub_pages/logout_page copy.dart';
import 'package:kidnet/p2/sub_pages/setting_page copy 2.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {

  late TabController subPageCrtIndex; // current index manager

  List <Widget> subScreens = [
    EditPage(),
    SettingPage(),
    LogoutPage(),
  ];

  @override
  void initState() {
    super.initState();
    subPageCrtIndex = TabController(length: subScreens.length, vsync: this);
  }

  @override
  void dispose() {
    subPageCrtIndex.dispose(); // very important
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Profile"),
        bottom: TabBar(
          // TabBar seleavered Appbar
          controller: subPageCrtIndex,
          tabs: const [
            Tab( text: "Edit"),
            Tab(  text: "Settings"),
            Tab( text: "Logout"),
          ],
        ),
      ),
      body: TabBarView(
        controller: subPageCrtIndex,
        // children: subScreens,
        children: [
          EditPage(),
          SettingPage(),
          LogoutPage(),
        ],
      ),
    );
  }
}// import 'package:flutter/material.dart';
// import 'package:kidnet/p2/sub_pages/edit_page.dart';
// import 'package:kidnet/p2/sub_pages/logout_page%20copy.dart';
// import 'package:kidnet/p2/sub_pages/setting_page%20copy%202.dart';

// class ProfilePage extends StatefulWidget {
//   ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   List subScreens = [EditPage(), SettingPage(), LogoutPage()];

//   int currentSubPageIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green,
//       // body: Center(child: Text("ProfilePage $currentSubPageIndex")),
//       body: subScreens[currentSubPageIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentSubPageIndex,

//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Edit"),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: "settings",
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.logout), label: "logout"),
//         ],
//         onTap: (value) {
//           setState(() {
//             currentSubPageIndex = value;
//           });
//         },
//       ),
//     );
//   }
// }
