import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final Color bgColor;
  final IconData icon;
  final String title;
  final Function onTap;

  const DrawerItem({
    Key? key,
    required this.bgColor,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

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
