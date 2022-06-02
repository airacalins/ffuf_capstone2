import 'package:flutter/material.dart';

import 'package:flutter_playground/models/models.dart';

class CompanyDetails extends StatelessWidget {
  final Company company;

  const CompanyDetails(
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
              'About',
              style: textTheme.headline6,
            ),
            Text(company.companyDescription),
            const SizedBox(height: 20),
            Text(
              'Address',
              style: textTheme.headline6,
            ),
            Text(company.address),
            const SizedBox(height: 20),
            Text(
              'Website',
              style: textTheme.headline6,
            ),
            Text(company.websiteUrl),
          ],
        ),
      ),
    );
  }
}
