import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/themes/themes.dart';
import 'package:flutter_playground/common/common.dart';
import 'package:flutter_playground/widgets/widgets.dart';
import 'package:flutter_playground/providers/providers.dart';
import 'package:flutter_playground/screens/screen_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).getLoginUser('1');
    final drawerNav = Provider.of<DrawerNav>(context);

    return Stack(
      children: [
        const DrawerNavBar(),
        AnimatedContainer(
          transform:
              Matrix4.translationValues(drawerNav.xOffset, drawerNav.yOffset, 0)
                ..scale(drawerNav.scaleFactor),
          color: ColorTheme.scaffoldBackgroundColor,
          duration: const Duration(milliseconds: 250),
          child: Scaffold(
            appBar: AppBar(
              leading: drawerNav.isDrawerOpen
                  ? GestureDetector(
                      onTap: () => drawerNav.close(),
                      child: const DrawerButton(),
                    )
                  : GestureDetector(
                      onTap: () => drawerNav.open(),
                      child: const DrawerButton(),
                    ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      user.imageUrl,
                    ),
                    radius: 20.0,
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: const [
                    SearchTextField(),
                    SizedBox(height: 15),
                    HomePopularJobs(),
                    SizedBox(height: 15),
                    HomeRecentJobs(),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: const BottomNavBar(),
          ),
        ),
      ],
    );
  }
}
