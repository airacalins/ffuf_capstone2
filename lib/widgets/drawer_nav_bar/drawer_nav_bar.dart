import 'package:flutter/material.dart';
import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/providers/providers.dart';
import 'package:flutter_playground/routes/routes.dart';
import 'package:provider/provider.dart';

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
                  header(user, textTheme),
                  const SizedBox(
                    height: 15,
                  ),
                  menu(context, textTheme),
                ],
              ),
              menuItem(
                bgColor: const Color(0xfff9454c),
                icon: Icons.exit_to_app,
                title: 'Logout',
                onTap: () => Navigator.of(context)
                    .pushReplacementNamed(RouteManager.loginScreen),
                textTheme: textTheme,
              )
            ],
          ),
        ),
      ),
    );
  }

  Column header(User user, TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(user.imageUrl),
          radius: 40.0,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '${user.firstName} ${user.lastName}',
          style: textTheme.headline2,
        ),
        Text(user.email)
      ],
    );
  }

  Column menu(
    BuildContext context,
    TextTheme textTheme,
  ) {
    return Column(
      children: [
        menuItem(
          bgColor: const Color(0xfffa5441),
          icon: Icons.person,
          title: 'Edit Profile',
          onTap: () => Navigator.of(context)
              .pushReplacementNamed(RouteManager.editProfileScreen),
          textTheme: textTheme,
        ),
        menuItem(
          bgColor: const Color(0xfffb9087),
          icon: Icons.watch_later,
          title: 'Applications',
          onTap: () => Navigator.of(context)
              .pushReplacementNamed(RouteManager.applicationScreen),
          textTheme: textTheme,
        ),
        menuItem(
          bgColor: const Color(0xff2cb9b5),
          icon: Icons.settings,
          title: 'Notification Settings',
          onTap: () => Navigator.of(context)
              .pushReplacementNamed(RouteManager.notificationScreen),
          textTheme: textTheme,
        ),
        menuItem(
          bgColor: const Color(0xfff933c0),
          icon: Icons.favorite,
          title: 'Share App',
          onTap: () => Navigator.of(context)
              .pushReplacementNamed(RouteManager.shareAppScreen),
          textTheme: textTheme,
        ),
      ],
    );
  }

  GestureDetector menuItem(
      {required Color bgColor,
      required IconData icon,
      required String title,
      required Function onTap,
      required TextTheme textTheme}) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: bgColor,
              child: Icon(
                icon,
                color: Colors.white,
                size: 18,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                title,
                style: textTheme.bodyText1!
                    .merge(const TextStyle(fontWeight: FontWeight.w500)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
