// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/common/common.dart';
import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/widgets/widgets.dart';

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
            bottomNav.homeScreen();
          },
        ),
        title: Text('Notifications'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          NotificationSwitch(
            title: 'New Post',
            subtitle: 'If any new post update',
            onSwitch: () {},
          ),
          NotificationSwitch(
            title: 'Got Hired',
            subtitle: 'If you get hired in any company',
            onSwitch: () {},
          ),
          NotificationSwitch(
            title: 'Get Rejected',
            subtitle: 'If you are rejected by any other company',
            onSwitch: () {},
          ),
          NotificationSwitch(
            title: 'Message',
            subtitle: 'Got any new message',
            onSwitch: () {},
          ),
          NotificationSwitch(
            title: 'Dark Mode',
            subtitle: 'Enable Dark Theme',
            onSwitch: () {},
          ),
        ],
      ),
    );
  }
}
