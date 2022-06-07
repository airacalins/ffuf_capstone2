import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_playground/themes/color_theme.dart';

class AppBarStyles {
  static const AppBarTheme theme = AppBarTheme(
    backgroundColor: ColorTheme.scaffoldBackgroundColor,
    foregroundColor: Colors.black,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.black12,
    ),
  );
}
