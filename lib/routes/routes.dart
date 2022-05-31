import 'package:flutter/material.dart';

import 'package:flutter_playground/screens/screens.dart';

class RouteManager {
  static const String splashScreen = '/';
  static const String loginScreen = '/login';
  static const String registerScreen = '/register';
  static const String appScreen = '/appScreen';
  static const String homeScreen = '/homeScreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String applicationScreen = '/applicationsScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String shareAppScreen = '/shareAppScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case registerScreen:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case appScreen:
        return MaterialPageRoute(
          builder: (context) => AppScreen(),
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case editProfileScreen:
        return MaterialPageRoute(
          builder: (context) => const EditProfileScreen(),
        );
      case applicationScreen:
        return MaterialPageRoute(
          builder: (context) => ApplicationsScreen(),
        );
      case notificationScreen:
        return MaterialPageRoute(
          builder: (context) => const NotificationScreen(),
        );
      case shareAppScreen:
        return MaterialPageRoute(
          builder: (context) => const ShareAppScreen(),
        );

      // TODO: Not Found Page Screen
      default:
        throw const FormatException('Route not found! Check routes again.');
    }
  }
}
