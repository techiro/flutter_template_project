import 'package:flutter/material.dart';

extension ThemeDataEx on ThemeData {
  static ThemeData customLight() {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.green,
      primaryColor: Colors.yellow,
      secondaryHeaderColor: Colors.amber,
      backgroundColor: Colors.white,
    );
  }

  static ThemeData customDark() {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.red,
      primaryColor: Colors.yellow,
      secondaryHeaderColor: Colors.amber,
      backgroundColor: Colors.white,
    );
  }
}
