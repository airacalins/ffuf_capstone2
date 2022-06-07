import 'package:flutter/material.dart';
import 'package:flutter_playground/themes/themes.dart';

class ButtonStyles {
  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      backgroundColor: ColorTheme.primaryColor,
      primary: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      textStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 15,
        fontFamily: 'Poppins',
      ),
    ),
  );
}
