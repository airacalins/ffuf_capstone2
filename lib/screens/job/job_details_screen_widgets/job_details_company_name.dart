import 'package:flutter/material.dart';

import 'package:flutter_playground/themes/themes.dart';

class JobDetailsCompanyName extends StatelessWidget {
  final String companyName;

  const JobDetailsCompanyName(
    this.companyName, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          companyName,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          height: 2,
          width: 20,
          color: ColorTheme.textColor,
        ),
      ],
    );
  }
}
