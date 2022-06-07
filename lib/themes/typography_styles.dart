import 'package:flutter/material.dart';

import 'package:flutter_playground/themes/themes.dart';

class TypographyStyles {
  static TextTheme theme = const TextTheme(
    caption: TextStyle(fontWeight: FontWeight.w500),
    bodyText1: TextStyle(
      letterSpacing: 0.2,
      fontWeight: FontWeight.normal,
      fontSize: 15,
      color: Color(0xff6A6A6A),
    ),
    headline1: TextStyle(
      letterSpacing: 0.2,
      fontSize: 34,
      fontWeight: FontWeight.w600,
      color: ColorTheme.textColor,
    ),
    headline2: TextStyle(
      letterSpacing: 0.2,
      fontSize: 30,
      fontWeight: FontWeight.w600,
      color: ColorTheme.textColor,
    ),
    headline3: TextStyle(
      letterSpacing: 0.2,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: ColorTheme.textColor,
    ),
    headline4: TextStyle(
      letterSpacing: 0.2,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: ColorTheme.textColor,
    ),
    headlineLarge: TextStyle(
      letterSpacing: 0.2,
      fontSize: 34,
    ),
  );
}
