
import 'package:flutter/material.dart';
import 'package:kidnet/Utils/images.dart';

Widget Smtile() {
  return Padding(
    padding: EdgeInsets.zero,
    child: ListTile(
      leading: Container(
        height: 54,
        width: 96,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.image1),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        "The Sea Beast Tile",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: Color(0xFF8C8C8C),
        ),
      ),
      subtitle: Text(
        "The Sea Beast Description,The Sea Beast Description,The Sea Beast Description,",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10,
          color: Color(0xFF8C8C8C),
        ),
      ),

      trailing: Container(
        padding: EdgeInsets.zero,
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Color.fromRGBO(255, 255, 255, 1)),
          borderRadius: BorderRadius.circular(25),
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Icon(Icons.play_arrow, color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    ),
  );
}