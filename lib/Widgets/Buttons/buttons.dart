import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kidnet/View/home_screen.dart';

Widget Loginbtn(
  Color color,
  String label, {
  double height = 38,
  double width = 292,
}) {
  return Container(
    height: 38,
    width: 292,
    decoration: BoxDecoration(color: color),
    child: TextButton(
      onPressed: () {
        Get.to(HomeScreen());
      },
      child: Text(label, style: TextStyle(color: Colors.white)),
    ),
  );
}
Widget Homebtn(
  IconData icon,
  String label,
  Color color,
  Color iconclr,
  Color txtclr,
) {
  return Container(
    padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
    height: 46,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: color,
    ),
    child: TextButton(
      onPressed: () {
        debugPrint(label);
      },
      child: Row(
        children: [
          Icon(icon, color: iconclr, size: 32),
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