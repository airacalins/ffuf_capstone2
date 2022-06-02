import 'package:flutter/material.dart';

import 'package:flutter_playground/constants/constant_text.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ConstantText.loginHeaderTitle,
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          ConstantText.loginFormInstruction,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
