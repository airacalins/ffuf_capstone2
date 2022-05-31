import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/common/common.dart';
import 'package:flutter_playground/screens/screens.dart';

class AppScreen extends StatelessWidget {
  AppScreen({Key? key}) : super(key: key);

  final tabs = [
    HomeScreen(),
    const MessagesScreen(),
    ProfileScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavData = Provider.of<BottomNav>(context);

    return Scaffold(
      body: tabs[bottomNavData.currentIndex],
    );
  }
}
