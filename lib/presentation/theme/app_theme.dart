import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    ),
    /*textTheme: const TextTheme(
      labelSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13.0,
        color: Colors.black,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
        color: Colors.black,
      ),
    ),*/
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black87,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black87,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    ),
    /*textTheme: const TextTheme(
      labelSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13.0,
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
        color: Colors.white,
      ),
    ),*/
  );
}
