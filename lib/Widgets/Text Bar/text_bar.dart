import 'package:flutter/material.dart';

TextEditingController nameCtr = .new();
TextEditingController passctr = .new();
TextEditingController srchctr = .new();
Widget Textbar(
  String label,
  Color Color,
  TextEditingController controller, {
  double height = 48,
  double width = 292,
}) {
  return Container(
    height: height,
    width: width,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        hint: Padding(
          padding: EdgeInsets.zero,
          child: Text("", style: TextStyle(color: Colors.white)),
        ),
        label: Padding(
          padding: EdgeInsets.zero,
          child: Text(label, style: TextStyle(color: Colors.white)),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
        filled: true,
        fillColor: Color,
      ),
    ),
  );
}
