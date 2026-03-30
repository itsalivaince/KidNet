// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kidnet/Models/Episodes.dart';




Widget Smtile(
  Episodes obj,
  
  {
  double? lheight,
  double? lradius,
  double? lwidth,
  
  FontWeight? Tfweight,
  double? Tfsize,
  Color? Tfcolor,
  
  FontWeight? Sfweight,
  double? Sfsize,
  Color? Sfcolor,
  double? Theight,
  double? Twidth,
  double? TBwidth,
  double? TBradius,
  Color? TBcolor,
  VoidCallback? onPressed,
  
  Color? TIcolor,
  VoidCallback? onTap,
}) {
  return Padding(
    padding: EdgeInsets.zero,
    child: ListTile(
      leading: Container(
        height: lheight ?? 54,
        width: lwidth ?? 96,
        decoration: BoxDecoration( borderRadius: BorderRadius.circular(lradius??0),
          image: DecorationImage(
            image: AssetImage(obj.Image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        obj.title,
        style: TextStyle(
          fontWeight: Tfweight ?? .w400,
          fontSize: Tfsize ?? 12,
          color: Tfcolor ?? Color(0xFF8C8C8C),
        ),
      ),
      subtitle: Text(
        obj.subtite ,
            
        style: TextStyle(
          fontWeight: Sfweight ?? .w400,
          fontSize: Sfsize ?? 10,
          color: Sfcolor ?? Color(0xFF8C8C8C),
        ),
      ),

      trailing: Container(
        padding: EdgeInsets.zero,
        height: Theight ?? 32,
        width: Twidth ?? 32,
        decoration: BoxDecoration(
          border: Border.all(
            width: TBwidth ?? 3,
            color: TBcolor ?? Color.fromRGBO(255, 255, 255, 1),
          ),
          borderRadius: BorderRadius.circular(TBradius ?? 25),
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: Icon(
            obj.icon,
            color: TIcolor ?? Color.fromRGBO(255, 255, 255, 1),
          ),
        ),

      ),
      onTap:onTap ,
    ),
  );
}
