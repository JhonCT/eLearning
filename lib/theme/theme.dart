import 'package:flutter/material.dart';

ThemeData themeData() {
  final ThemeData base = ThemeData();

  return base.copyWith(
    primaryColor: Color(0xFF02A8A8),
    accentColor: Colors.white,
    buttonColor: Color.fromRGBO(2, 168, 168, 100),
    iconTheme: IconThemeData(
      color: Color(0xFF343434),
    ),
    textTheme: TextTheme(
      button:
          TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Segoe UI'),
      bodyText1: TextStyle(
        color: Color(0xFF343434),
        fontSize: 18,
      ),
    ),
  );
}
