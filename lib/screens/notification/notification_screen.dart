import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/screen_widgets.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/common/common.dart';
import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/utils/strings_constant.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNav = Provider.of<BottomNav>(context);
    final drawerNav = Provider.of<DrawerNav>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(RouteManager.homeScreen);
            drawerNav.close();
            bottomNav.currentIndex = 0;
          },
        ),
        title: const Text(notifications),
        centerTitle: true,
      ),
      body: Column(
        children: [
          NotificationItemSwitch(
            title: newPost,
            subtitle: ifAnyNewPostUpdate,
            onSwitch: () {},
          ),
          NotificationItemSwitch(
            title: getHired,
            subtitle: ifYouGetHiredInAnyCompany,
            onSwitch: () {},
          ),
          NotificationItemSwitch(
            title: getRejected,
            subtitle: ifYouAreRejectedByAnyOtherCompany,
            onSwitch: () {},
          ),
          NotificationItemSwitch(
            title: message,
            subtitle: gotAnyNewMessage,
            onSwitch: () {},
          ),
          NotificationItemSwitch(
            title: darkMode,
            subtitle: enableDarkTheme,
            onSwitch: () {},
          ),
        ],
      ),
    );
  }
}
