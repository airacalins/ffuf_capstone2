import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/providers/providers.dart';
import 'package:flutter_playground/screens/screen_widgets.dart';
import 'package:flutter_playground/utils/strings_constant.dart';

class JobDetailsTab extends StatelessWidget {
  final Job job;

  JobDetailsTab(
    this.job, {
    Key? key,
  }) : super(key: key);

  final List<String> detailTabs = [
    description,
    company,
    reviews,
  ];

  @override
  Widget build(BuildContext context) {
    final Company company = Provider.of<CompanyProvider>(context).getCompanyById(job.companyId);

    return DefaultTabController(
      length: detailTabs.length,
      child: NestedScrollView(
        scrollDirection: Axis.vertical,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                automaticallyImplyLeading: false,
                floating: true,
                pinned: true,
                snap: false,
                primary: true,
                forceElevated: innerBoxIsScrolled,
                bottom: TabBar(
                  tabs: detailTabs.map((e) => Tab(text: e)).toList(),
                ),
              ),
            )
          ];
        },
        body: TabBarView(
          children: [
            JobDetailsTabQualificationDetails(job.qualifications),
            JobDetailsTabCompanyDetails(company),
            const SingleChildScrollView(child: Center(child: Text(reviews))),
          ],
        ),
      ),
    );
  }
}
