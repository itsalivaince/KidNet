import 'package:flutter/material.dart' ;
import 'package:kidnet/Widgets/Text%20Bar/text_bar.dart';
import 'package:kidnet/Widgets/Tiles/Movie_tile.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF000000),
        body: Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 12),
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
                  Textbar(
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
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Smtile();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 5);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
