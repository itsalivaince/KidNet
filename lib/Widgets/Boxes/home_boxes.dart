// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

Widget Homescreen(String label, {double width = 75}) {
  return Container(
    height: 40,
    width: width,
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.5), width: 1),
      borderRadius: BorderRadius.circular(24),
    ),
    child: TextButton(
      onPressed: () {
        debugPrint(label);
      },
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    ),
  );
}