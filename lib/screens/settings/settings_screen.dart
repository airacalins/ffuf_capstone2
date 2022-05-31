import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/common/common.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNavData = Provider.of<BottomNav>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => bottomNavData.homeScreen(),
        ),
        centerTitle: true,
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Text('Settings'),
      ),
    );
  }
}
