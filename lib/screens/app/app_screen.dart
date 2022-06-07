import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/common/common.dart';
import 'package:flutter_playground/screens/screens.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  final tabs = const [
    HomeScreen(),
    MessagesScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNav = Provider.of<BottomNav>(context);

    return Scaffold(body: tabs[bottomNav.currentIndex]);
  }
}
