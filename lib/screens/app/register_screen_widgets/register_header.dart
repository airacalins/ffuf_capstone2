import 'package:flutter/material.dart';

import 'package:flutter_playground/constants/constant_text.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ConstantText.registerHeaderTitle,
          style: textTheme.headline2,
        ),
        Text(
          ConstantText.registerFormInstruction,
          style: textTheme.bodyText1,
        ),
      ],
    );
  }
}
