import 'package:flutter/material.dart';

class CustomTextStyles {
  // Text style for the header in the splash screen
  static TextStyle splashHeader = const TextStyle(
    fontFamily: "EditorGifted",
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  // Text style for buttons in the splash screen
  static TextStyle splashButton = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.normal,
  );

  // Text style for the header in the weather section on the home screen
  static TextStyle weatherHeader = const TextStyle(
    fontSize: 28,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  // Text style for the location text in the weather overview on the home screen
  static TextStyle weatherLocation = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  // Text style for daily weather text in the weather overview
  static TextStyle dailyText = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 17,
  );
}
