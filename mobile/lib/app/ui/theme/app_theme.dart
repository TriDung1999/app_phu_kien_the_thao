import 'package:flutter/material.dart';

final Color lightPrimary = Colors.white;
final Color darkPrimary = Colors.black;
final Color lightAccent = Color(0xFFD17E50);
final Color darkAccent = Colors.blueAccent;
//  static Color lightBG = Color(0xfffcfcff);
final Color lightBG = Colors.grey.shade50;
final Color darkBG = Colors.black;
final Color badgeColor = Colors.red;

final ThemeData appThemeData = ThemeData(
  backgroundColor: lightBG,
  primaryColor: lightPrimary,
  accentColor: lightAccent,
  cursorColor: lightAccent,
  splashColor: Colors.grey.shade50,
  highlightColor: Colors.grey.shade50,
  fontFamily: 'Varela',
  appBarTheme: AppBarTheme(
    elevation: 0.5,
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.grey[600],
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);
