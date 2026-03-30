

import 'package:flutter/material.dart';


Widget Loginbtn(
  Color color,
  String label, {
  double height = 38,
  double width = 292,
  VoidCallback? onPressed,
}) {
  return Container(
    height: 38,
    width: 292,
    decoration: BoxDecoration(color: color),
    child: TextButton(
      onPressed: onPressed,
      child: Text(label, style: TextStyle(color: Colors.white)),
    ),
  );
}


Widget Homebtn(
  IconData icon,
  String label,
  Color color,
  Color iconclr,
  Color txtclr, {

  double? Bradius,
 
  double? Bwidth,
  
  Color? Bcolor,
  VoidCallback? onPressed,
  double? height,
  double? width,
  
  double? Isize,
}) {
  return Container(
    padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(Bradius ?? 4),
      color: color,
    ),
    child: TextButton(
      onPressed:
          onPressed ??
          () {
            debugPrint(label);
          },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: iconclr, size: Isize ?? 32),
          Text(
            label,
            style: TextStyle(
              color: txtclr,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget Iconbutton({
  double? height,
  Color? Ccolor,
  double? width,
  double? bwidth,
  Color? Bcolor,
  double? Bradius,
  IconData? icon,
  VoidCallback? onPressed,
  double? Isize,
  Color? Icolor,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: Ccolor,
      border: Border.all(width: bwidth ?? 0, color: Bcolor ?? Colors.black),
      borderRadius: BorderRadius.circular(Bradius ?? 0),
    ),
    child: IconButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,

      icon: Icon(icon, size: Isize, color: Icolor),
    ),
  );
}

Widget Textbutton({
  double? height,
  Color? Ccolor,
  double? width,
  double? bwidth,
  Color? Bcolor,
  double? Bradius,
  String? text,
  VoidCallback? onPressed,
  FontWeight? fontWeight,
  double? fontSize,
  Color? fcolor,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: Ccolor,
      border: Border.all(width: bwidth ?? 0, color: Bcolor ?? Colors.black),
      borderRadius: BorderRadius.circular(Bradius ?? 0),
    ),
    child: TextButton(
      onPressed: onPressed,
      child: Text(
        text ?? "",
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: fcolor,
        ),
      ),
    ),
  );
}
