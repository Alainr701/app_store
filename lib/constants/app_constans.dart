import 'package:flutter/material.dart';

class AppConstants {
  static const String appName = 'App Store';
  static const String appVersion = '1.0.0';

  static const appGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF0F2027),
      Color(0xFF203A43),
      Color(0xFF2C5364),
    ],
  );
  static const primaryColor = Color.fromARGB(255, 68, 248, 158);
  static const secondaryColor = Color.fromARGB(255, 143, 213, 111);
  static const accentColor = Color.fromARGB(255, 255, 255, 255);
  static const backgroundColor = Color.fromARGB(255, 242, 242, 242);
  static const greyBackgroundColor = Color.fromARGB(255, 222, 222, 222);
  static const selectedColor = Color.fromARGB(255, 174, 22, 22);
  static const unselectedColor = Color.fromARGB(255, 112, 64, 64);

  //text Style const
  static const TextStyle titleStyle =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black);
  //margin
  static const double margin = 10;
}
