// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/common.dart';
import 'package:flutter_playground/providers/providers.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).getLoginUser('1');
    final bottomNav = Provider.of<BottomNav>(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => bottomNav.homeScreen(),
        ),
        centerTitle: true,
        title: const Text(
          'Profile',
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          user.imageUrl,
                        ),
                        radius: 40,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 14,
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          radius: 12,
                          child: IconButton(
                            icon: const Icon(
                              Icons.edit,
                              size: 10,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  '${user.firstName} ${user.lastName}',
                  style: textTheme.headline2!.merge(
                    const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Edit Profile',
                  style: textTheme.bodyText1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
