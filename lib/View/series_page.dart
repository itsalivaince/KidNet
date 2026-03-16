import 'package:flutter/material.dart';
import 'package:kidnet/Models/Episodes.dart';
import 'package:kidnet/Utils/images.dart';
import 'package:kidnet/Widgets/Buttons/buttons.dart';
import 'package:kidnet/Widgets/Tiles/Movie_tile.dart';

class SeriesPage extends StatefulWidget {
  const SeriesPage({super.key});

  @override
  State<SeriesPage> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsetsGeometry.only(
            left: 12,
            right: 12,
            top: 8,
            bottom: 8,
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 242,
                    width: 430,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.image1),
                        fit: BoxFit.cover,
                      ),
                    ),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Iconbutton(
                              height: 32,
                              width: 32,
                              Ccolor: Color(0xFF282824),
                              Bradius: 64,
                              icon: Icons.broadcast_on_home,
                              Isize: 18,
                              Icolor: Colors.white,
                              onPressed: () {
                                debugPrint("Button pressed");
                              },
                            ),
                            SizedBox(width: 16),
                            Iconbutton(
                              height: 32,
                              width: 32,
                              Ccolor: Color(0xFF282824),
                              Bradius: 64,
                              icon: Icons.cancel,
                              Isize: 18,
                              Icolor: Colors.white,
                              onPressed: () {
                                debugPrint("Button pressed");
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Color(0xFFFFB4B8)),
                  SizedBox(height: 3),
                  Image.asset("assets/images/logo.png", height: 20, width: 75),
                  Text(
                    "MINDHUNTER",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "98% match",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF48D077),
                        ),
                      ),
                      SizedBox(width: 1),
                      Text(
                        "2019 A 2 Seasons",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Image.asset(AppImages.image4),
                  SizedBox(height: 7),
                  Homebtn(
                    Icons.play_arrow,
                    "Play",
                    Colors.white,
                    Colors.black,
                    Colors.black,
                    Bradius: 4,
                    height: 46,
                    width: 406,
                    onPressed: () {
                      debugPrint("Play");
                    },
                    Isize: 32,
                  ),
                  SizedBox(height: 7),
                  Homebtn(
                    Icons.download,
                    "Download",
                    Color(0xFF212121),
                    Colors.white,
                    Colors.white,
                    Bradius: 4,
                    height: 46,
                    width: 406,
                    onPressed: () {
                      debugPrint("Download");
                    },
                    Isize: 24,
                  ),

                  SizedBox(height: 12),
                  Text(
                    "In the late 1970s two FBI agents expand criminal science by delving into the psychology of murder and getting uneasily close to all-too-real monsters.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "Cast:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        " Jonathan Groff, Holt McCallany, Anna Torv, Cotte... more",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Creater:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        " Joe PanHall",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Iconbutton(
                        icon: Icons.add,
                        Icolor: Colors.white,
                        Isize: 32,
                        onPressed: () {
                          debugPrint("Added");
                        },
                      ),
                      SizedBox(width: 70),
                      Iconbutton(
                        icon: Icons.thumb_up,
                        Icolor: Colors.white,
                        Isize: 32,
                        onPressed: () {
                          debugPrint("Liked");
                        },
                      ),
                      SizedBox(width: 100),
                      Iconbutton(
                        icon: Icons.send,
                        Icolor: Colors.white,
                        Isize: 32,
                        onPressed: () {
                          debugPrint("Sent");
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      Textbutton(
                        text: "Episodes",
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        fcolor: Colors.white,
                        onPressed: () {
                          debugPrint("Episodes");
                        },
                      ),
                      Textbutton(
                        text: "More Like This",
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        fcolor: Colors.white,
                        onPressed: () {
                          debugPrint("More Like This");
                        },
                      ),
                      Textbutton(
                        text: "Trailers & More",
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        fcolor: Colors.white,
                        onPressed: () {
                          debugPrint("Trailers");
                        },
                      ),
                    ],
                  ),

                  DropdownMenu(
                    hintText: "Season",
                    textStyle: TextStyle(color: Colors.white),
                    dropdownMenuEntries: [
                      DropdownMenuEntry(
                        value: "S1",
                        label: "Season 1",
                        style: ButtonStyle(
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                        ),
                      ),
                      DropdownMenuEntry(value: "S1", label: "Season 2"),
                      DropdownMenuEntry(value: "S1", label: "Season 3"),
                      DropdownMenuEntry(value: "S1", label: "Season 4"),
                      DropdownMenuEntry(value: "S1", label: "Season 5"),
                    ],
                    inputDecorationTheme: InputDecorationThemeData(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0),
                      ),
                    ),
                  ),

                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Smtile(
                        episodestem[index],
                        lheight: 86,
                        lwidth: 146,
                        lradius: 10,
                        Tfcolor: Colors.white,
                        Tfsize: 16,
                        Tfweight: .w400,
                        TIcolor: Color.fromRGBO(255, 255, 255, 0.7),
                        TBwidth: 0,
                        TBcolor: Colors.black,
                        onPressed: () {
                          debugPrint("Downlaoding");
                        },
                        onTap: () {
                          debugPrint("Play");
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        child: Text(
                          "In 1977, frustrated FBI hostage negotiator Holden Ford finds an unlikely ally in veteran agent Bill Tench and begins studying a new class of murderer.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                    itemCount: episodestem.length,
                  ),
                ],
              ),

              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.black,
                onTap: (value) {},
                selectedItemColor: Color.fromRGBO(255, 255, 255, 1),
                unselectedItemColor: Color.fromRGBO(255, 255, 255, 0.74),
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.new_releases_rounded),
                    label: "New and Hot",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions_rounded),
                    label: "Fast laughs",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.downloading_sharp),
                    label: "Downloads",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
