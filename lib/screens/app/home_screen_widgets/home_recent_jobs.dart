import 'package:flutter/material.dart';

import 'package:flutter_playground/constants/constant_text.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class HomeRecentJobs extends StatelessWidget {
  const HomeRecentJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ConstantText.recentJobCategory,
              style: textTheme.headline4,
            ),
            Text(
              'Show All',
              style: textTheme.caption,
            ),
          ],
        ),
        const RecentJobPostList(),
      ],
    );
  }
}
