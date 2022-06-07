import 'package:flutter/material.dart';

class JobDetailsSalary extends StatelessWidget {
  final double salary;

  const JobDetailsSalary(this.salary, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Text(
      '\$${salary.toStringAsFixed(0)}/m',
      style: textTheme.titleMedium!.merge(
        TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.grey.shade600,
        ),
      ),
    );
  }
}
