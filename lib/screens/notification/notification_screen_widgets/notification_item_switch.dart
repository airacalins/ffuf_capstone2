import 'package:flutter/material.dart';

import 'package:flutter_playground/themes/themes.dart';

class NotificationItemSwitch extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onSwitch;

  const NotificationItemSwitch({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onSwitch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme.headline6,
              ),
              Text(
                subtitle,
                style: textTheme.caption,
              ),
            ],
          ),
          Switch(
            value: true,
            onChanged: (val) => onSwitch(val),
            activeColor: ColorTheme.primaryColor,
          )
        ],
      ),
    );
  }
}
