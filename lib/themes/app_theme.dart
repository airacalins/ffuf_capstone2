import 'package:flutter/material.dart';

import 'package:flutter_playground/themes/themes.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    appBarTheme: AppBarStyles.theme,
    fontFamily: 'Poppins',
    primaryColor: ColorTheme.primaryColor,
    scaffoldBackgroundColor: ColorTheme.scaffoldBackgroundColor,
    // scaffoldBackgroundColor: Colors.grey,
    textTheme: TypographyStyles.theme,
    elevatedButtonTheme: ButtonStyles.elevatedButtonTheme,
    tabBarTheme: TabBarStyles.theme,
    bottomNavigationBarTheme: BottomNavBarStyles.theme,
  );
}
