import 'package:flutter/material.dart';

import 'package:flutter_playground/models/models.dart';

class JobDetailsHeader extends StatelessWidget {
  final Company company;
  final String jobTitle;

  const JobDetailsHeader({
    Key? key,
    required this.company,
    required this.jobTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 30,
            bottom: 10,
          ),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade300,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: NetworkImage(company.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          jobTitle,
          textAlign: TextAlign.center,
          style: textTheme.headline4,
        ),
      ],
    );
  }
}
