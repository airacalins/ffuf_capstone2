import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/providers/providers.dart';
import 'package:flutter_playground/routes/routes.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class DrawerNavBar extends StatelessWidget {
  const DrawerNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).getLoginUser('1');
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 70,
            horizontal: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(user.imageUrl),
                        radius: 40.0,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${user.firstName} ${user.lastName}',
                        style: textTheme.headline2,
                      ),
                      Text(user.email)
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      DrawerItem(
                        bgColor: const Color(0xfffa5441),
                        icon: Icons.person,
                        title: 'Edit Profile',
                        onTap: () => Navigator.of(context).pushReplacementNamed(
                            RouteManager.editProfileScreen),
                      ),
                      DrawerItem(
                        bgColor: const Color(0xfffb9087),
                        icon: Icons.watch_later,
                        title: 'Applications',
                        onTap: () => Navigator.of(context).pushReplacementNamed(
                            RouteManager.applicationScreen),
                      ),
                      DrawerItem(
                        bgColor: const Color(0xff2cb9b5),
                        icon: Icons.settings,
                        title: 'Notification Settings',
                        onTap: () => Navigator.of(context).pushReplacementNamed(
                            RouteManager.notificationScreen),
                      ),
                      DrawerItem(
                        bgColor: const Color(0xfff933c0),
                        icon: Icons.favorite,
                        title: 'Share App',
                        onTap: () => Navigator.of(context)
                            .pushReplacementNamed(RouteManager.shareAppScreen),
                      ),
                    ],
                  ),
                ],
              ),
              DrawerItem(
                bgColor: const Color(0xfff9454c),
                icon: Icons.exit_to_app,
                title: 'Logout',
                onTap: () => Navigator.of(context)
                    .pushReplacementNamed(RouteManager.loginScreen),
              )
            ],
          ),
        ),
      ),
    );
  }
}
