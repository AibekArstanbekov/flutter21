import 'package:flutter/material.dart';

class MyTheme {
  ///MARK: TextStyle
  ThemeData myLightTheme = ThemeData(
      textTheme: const TextTheme(
        ///AppBar Text
        displayLarge: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
        displayMedium: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 24,
      ));

  ///MARK: Body bgc
  ThemeData myBodyBgcColor = ThemeData(
    scaffoldBackgroundColor: Colors.white,
  );

  ///MARK: AppBar bgc
  ThemeData myAppBarBgcColor = ThemeData(
    primaryColor: Colors.white,
  );
}
