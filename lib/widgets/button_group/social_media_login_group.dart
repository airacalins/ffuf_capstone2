// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SocialMediaLoginLoginGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(image: AssetImage('assets/images/app/google.png')),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(image: AssetImage('assets/images/app/facebook.png')),
        ),
      ],
    );
  }
}
