import 'package:flutter/material.dart';

class MyTheme {
  ///MARK: TextStyle
  ThemeData myLightTheme = ThemeData(
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  ///MARK: Body bgc
  ThemeData myBodyBgcColor = ThemeData(
    scaffoldBackgroundColor: Colors.yellowAccent,
  );

  ///MARK: AppBar bgc
  ThemeData myAppBarBgcColor = ThemeData(
    primaryColor: Colors.deepOrangeAccent,
  );
}
