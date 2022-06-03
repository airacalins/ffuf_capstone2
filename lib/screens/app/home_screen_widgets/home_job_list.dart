// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_playground/utils/strings_constant.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class HomeJobList extends StatelessWidget {
  final String title;
  final Widget sortedJobList;
  final bool isVerticalScroll;

  const HomeJobList({
    Key? key,
    required this.title,
    required this.sortedJobList,
    required this.isVerticalScroll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: textTheme.headline4,
            ),
            Text(
              showAll,
              style: textTheme.caption,
            ),
          ],
        ),
        isVerticalScroll
            ? sortedJobList
            : Container(
                height: 180,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: sortedJobList,
              ),
      ],
    );
  }
}
