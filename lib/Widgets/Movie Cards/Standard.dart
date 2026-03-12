import 'package:flutter/material.dart';
import 'package:kidnet/Utils/images.dart';

Widget Smcard({double height = 180, double width = 126}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(
        image: AssetImage(AppImages.image1),
        fit: BoxFit.cover,
      ),
    ),
  );
}