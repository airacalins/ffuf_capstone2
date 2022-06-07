import 'package:flutter/material.dart';

class JobDetailsJobLocation extends StatelessWidget {
  final String location;

  const JobDetailsJobLocation(this.location, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: Colors.grey.shade600,
          size: 20,
        ),
        const SizedBox(width: 5),
        Text(location)
      ],
    );
  }
}
