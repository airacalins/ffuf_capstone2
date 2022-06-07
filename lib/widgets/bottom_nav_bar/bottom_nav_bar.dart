import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/common/bottom_nav.dart';
import 'package:flutter_playground/utils/strings_constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNav = Provider.of<BottomNav>(context);

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomNav.currentIndex,
        onTap: (index) => bottomNav.currentIndex = index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: messages,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: profile,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: settings,
          ),
        ],
      ),
    );
  }
}
