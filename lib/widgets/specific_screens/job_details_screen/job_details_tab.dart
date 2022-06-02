import 'package:flutter/material.dart';
import 'package:flutter_playground/providers/providers.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class JobDetailsTab extends StatelessWidget {
  final Job job;

  JobDetailsTab(
    this.job, {
    Key? key,
  }) : super(key: key);

  final List<String> detailTabs = [
    'Description',
    'Company',
    'Reviews',
  ];

  @override
  Widget build(BuildContext context) {
    final Company company =
        Provider.of<CompanyProvider>(context).getCompanyById(job.companyId);

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
            QualificationDetails(job.qualifications),
            CompanyDetails(company),
            const SingleChildScrollView(child: Center(child: Text('Reviews'))),
          ],
        ),
      ),
    );
  }
}
