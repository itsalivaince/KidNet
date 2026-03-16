import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kidnet/Utils/images.dart';
import 'package:kidnet/View/series_page.dart';

Widget Smcard({double height = 180, double width = 126,VoidCallback? onTap}) {
  return GestureDetector(
    onTap: (){Get.to(SeriesPage());},
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage(AppImages.image1),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}