import 'package:flutter/material.dart';

import 'package:flutter_playground/constants/constant_text.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class HomePopularJobs extends StatelessWidget {
  const HomePopularJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ConstantText.popularJobCategory,
              style: textTheme.headline4,
            ),
            Text(
              'Show All',
              style: textTheme.caption,
            ),
          ],
        ),
        Container(
          height: 180,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const PopularJobList(),
        ),
      ],
    );
  }
}
