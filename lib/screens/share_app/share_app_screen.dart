import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/common/common.dart';
import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/utils/strings_constant.dart';

class ShareAppScreen extends StatelessWidget {
  const ShareAppScreen({Key? key}) : super(key: key);

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
            bottomNav.currentIndex = 0;
          },
        ),
        centerTitle: true,
        title: const Text(shareApp),
      ),
      body: const Center(
        child: Text(shareApp),
      ),
    );
  }
}
