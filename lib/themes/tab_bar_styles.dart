import 'package:flutter/material.dart';
import 'package:flutter_playground/themes/themes.dart';

class TabBarStyles {
  static final TabBarTheme theme = TabBarTheme(
    unselectedLabelColor: ColorTheme.textColor,
    unselectedLabelStyle: const TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
    ),
    labelColor: Colors.white,
    labelStyle: const TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
    ),
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: ColorTheme.primaryColor,
    ),
  );
}
