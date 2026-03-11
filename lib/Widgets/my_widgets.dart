import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kidnet/Utils/images.dart';
import 'package:kidnet/View/home_screen.dart';

TextEditingController nameCtr = .new();
TextEditingController passctr = .new();
TextEditingController srchctr = .new();

Widget Loginbar(
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

Widget Cmcard() {
  return Column(
    children: [
      Container(
        height: 170,
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
                  onPressed: () {},
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

Widget Tmcard() {
  return Container(
    height: 370,
    width: 185,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(
        image: AssetImage(AppImages.image1),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget Smgridcard() {
  return Container(
  
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(image: AssetImage(AppImages.image1),fit: BoxFit.cover),
    ),
  );
}
