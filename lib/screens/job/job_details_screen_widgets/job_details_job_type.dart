import 'package:flutter/material.dart';

class JobDetailsJobType extends StatelessWidget {
  final String jobType;

  const JobDetailsJobType(this.jobType, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        const Icon(Icons.access_time),
        const SizedBox(width: 10),
        Text(
          jobType,
          style: textTheme.titleMedium!.merge(
            TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ],
    );
  }
}
