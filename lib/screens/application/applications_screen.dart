// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_playground/providers/application_provider.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/widgets/widgets.dart';
import 'package:flutter_playground/common/common.dart';
import 'package:flutter_playground/routes/routes.dart';

class ApplicationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final applications = Provider.of<ApplicationProvider>(context).applications;
    final drawerNav = Provider.of<DrawerNav>(context);
    final bottomNavData = Provider.of<BottomNav>(context);

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(RouteManager.homeScreen);
            drawerNav.close();
            bottomNavData.homeScreen();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: const Text('Applications'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Your Applications',
              style: textTheme.headline3!.merge(const TextStyle(
                fontWeight: FontWeight.w500,
              )),
            ),
          ),
          Expanded(
            child: ApplicationList(applications: applications),
          ),
        ],
      ),
    );
  }
}
