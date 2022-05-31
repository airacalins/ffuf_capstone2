import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/common/common.dart';
import 'package:flutter_playground/routes/routes.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNav = Provider.of<BottomNav>(context);
    final drawerNav = Provider.of<DrawerNav>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(RouteManager.homeScreen);
            drawerNav.close();
            bottomNav.homeScreen();
          },
        ),
        centerTitle: true,
        title: const Text('Edit Profile'),
      ),
      body: const Center(
        child: Text('Edit Profile'),
      ),
    );
  }
}
