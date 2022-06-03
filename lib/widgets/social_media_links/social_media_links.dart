// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_playground/widgets/widgets.dart';

class SocialMediaLinks extends StatelessWidget {
  final String caption1;
  final String caption2;
  final String linkText;
  final Function onNavigate;

  const SocialMediaLinks({
    Key? key,
    required this.caption1,
    required this.caption2,
    required this.linkText,
    required this.onNavigate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '- $caption1 -',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(height: 20),
        SocialMediaLoginLoginGroup(),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$caption2 ',
              style: textTheme.bodyText1,
            ),
            GestureDetector(
              onTap: () => onNavigate(),
              child: Text(
                linkText,
                style: textTheme.bodyText1!.merge(
                  const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1A1D1E),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
