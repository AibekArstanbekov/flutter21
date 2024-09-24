import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgrColor = const Color(0xffeeedf2);
  static Color textColor = const Color(0xff3b3b3b);
  static Color ticketBlue = const Color(0xff526799);
  static Color ticketOrange = const Color(0xffff6d00);
  static Color kakiColor = const Color(0xffd2bdb6);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppStyles.textColor,
  );

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: AppStyles.textColor,
  );

  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.w600,
    color: AppStyles.textColor,
  );

  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle headLineStyle4 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
}
