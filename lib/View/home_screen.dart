import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kidnet/Utils/images.dart';
import 'package:kidnet/View/search_screen.dart';
import 'package:kidnet/Widgets/my_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,

        body: ListView(
          children: [
            Container(
              height: 932,
              width: 430,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(104, 121, 155, 1),
                    Color.fromRGBO(61, 68, 89, 1),
                  ],
                  begin: AlignmentGeometry.topCenter,
                  end: AlignmentGeometry.bottomCenter,
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "For Aron",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 27,
                          ),
                        ),
                        SizedBox(width: 24),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.broadcast_on_home,
                                color: Colors.white,
                                size: 28,
                              ),
                              SizedBox(width: 20),
                              IconButton(onPressed: (){
                                Get.to(SearchScreen());
                              }, 
                              icon: Icon(Icons.search,size: 28,color: Colors.white,))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14, right: 14, top: 10),
                      child: Row(
                        children: [
                          Homescreen("Series"),
                          SizedBox(width: 16),
                          Homescreen("Films", width: 69),
                          SizedBox(width: 16),
                          Homescreen("Categories", width: 142),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 27, right: 27, top: 30),
                      child: Container(
                        height: 549,
                        width: 375,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImages.image1),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 8,
                                    bottom: 8,
                                    right: 8,
                                  ),
                                  child: Row(
                                    children: [
                                      Homebtn(
                                        Icons.play_arrow,
                                        "Play",
                                        Colors.white,
                                        Colors.black,
                                        Colors.black,
                                      ),
                                      SizedBox(width: 10),
                                      Homebtn(
                                        Icons.add,
                                        "My List",
                                        Color.fromRGBO(0, 0, 0, 0.4),
                                        Colors.white,
                                        Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Continue watching for Aron",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Cmcard(),
                          SizedBox(width: 2),
                          Cmcard(),
                          SizedBox(width: 2),
                          Cmcard(),
                          SizedBox(width: 2),
                          Cmcard(),
                          SizedBox(width: 2),
                          Cmcard(),
                          SizedBox(width: 2),
                          Cmcard(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Column(
              children: [
                Container(
                  height: 1388,
                  width: 422,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(61, 68, 89, 1),
                        Color.fromRGBO(0, 0, 0, 1),
                      ],
                      begin: AlignmentGeometry.topCenter,
                      end: AlignmentGeometry.bottomCenter,
                    ),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Trending Now",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Only on Kidnet",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Tmcard(),
                              SizedBox(width: 2),
                              Tmcard(),
                              SizedBox(width: 2),
                              Tmcard(),
                              SizedBox(width: 2),
                              Tmcard(),
                              SizedBox(width: 2),
                              Tmcard(),
                              SizedBox(width: 2),
                              Tmcard(),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),

                        Text(
                          "Tv Commedies",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),

                        Text(
                          "Documentries",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),

                        Text(
                          "Best of India",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                              SizedBox(width: 2),
                              Smcard(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
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
      ),
    );
  }
}
