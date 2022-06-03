// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget {
  final String title;
  final String description;

  const FormHeader({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
