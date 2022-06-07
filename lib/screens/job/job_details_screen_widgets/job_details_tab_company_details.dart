import 'package:flutter/material.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/utils/strings_constant.dart';

class JobDetailsTabCompanyDetails extends StatelessWidget {
  final Company company;

  const JobDetailsTabCompanyDetails(
    this.company, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(
          top: 70,
          bottom: 20,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              about,
              style: textTheme.headline6,
            ),
            Text(company.companyDescription),
            const SizedBox(height: 20),
            Text(
              address,
              style: textTheme.headline6,
            ),
            Text(company.address),
            const SizedBox(height: 20),
            Text(
              website,
              style: textTheme.headline6,
            ),
            Text(company.websiteUrl),
          ],
        ),
      ),
    );
  }
}
