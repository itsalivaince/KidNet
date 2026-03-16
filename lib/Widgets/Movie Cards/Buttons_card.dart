import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kidnet/Utils/images.dart';
import 'package:kidnet/View/series_page.dart';

Widget Bmcard() {
  return Column(
    children: [
      Container(
        height: 164,
        width: 121,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
          image: DecorationImage(
            image: AssetImage(AppImages.image1),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 76,
            left: 51,
            right: 51,
            bottom: 76,
          ),
          child: Container(
            height: 19,
            width: 19,
            decoration: BoxDecoration(
              border: Border.all(width: 0.6, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 10),
            ),
          ),
        ),
      ),
      Container(
        height: 28,
        width: 121,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(0, 0, 0, 0), Color.fromRGBO(0, 0, 0, 1)],
            begin: AlignmentGeometry.topCenter,
            end: AlignmentGeometry.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 4, left: 6, right: 6, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Play name here",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 6,
                      color: Color.fromRGBO(255, 255, 255, 2),
                    ),
                  ),
                  Text(
                    "2h 8m",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 5,
                      color: Color.fromRGBO(255, 255, 255, 2),
                    ),
                  ),
                ],
              ),
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromRGBO(255, 0, 0, 1),
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Get.to(SeriesPage());
                  },
                  icon: Icon(Icons.play_arrow, color: Colors.white, size: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
