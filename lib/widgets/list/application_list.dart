import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/providers/providers.dart';
import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/screens/screens.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class ApplicationList extends StatelessWidget {
  const ApplicationList({
    Key? key,
    required this.applications,
  }) : super(key: key);

  final List<Application> applications;

  @override
  Widget build(BuildContext context) {
    final jobData = Provider.of<JobProvider>(context);
    final companyData = Provider.of<CompanyProvider>(context);
    final deviceHeight = MediaQuery.of(context).size.height;

    void handleShowJobDetails(Job job) {
      showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40.0),
          ),
        ),
        isScrollControlled: true,
        constraints: BoxConstraints(
          maxHeight: deviceHeight * 0.88,
        ),
        context: context,
        builder: (context) => JobDetailsScreen(job),
      );
    }

    return ListView.builder(
      itemCount: applications.length,
      itemBuilder: (BuildContext context, int index) {
        final application = applications[index];
        final job = jobData.getJobById(applications[index].jobId);
        final company = companyData.getCompanyById(job.companyId);

        return ApplicationCard(
          application: application,
          company: company,
          job: job,
          onTap: () => handleShowJobDetails(job),
        );
      },
    );
  }
}
