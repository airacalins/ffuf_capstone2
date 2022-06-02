import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/screens/screen_widgets.dart';
import 'package:flutter_playground/providers/providers.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class JobDetailsScreen extends StatelessWidget {
  final Job job;
  const JobDetailsScreen(this.job, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Company company =
        Provider.of<CompanyProvider>(context).getCompanyById(job.companyId);
    final JobType jobType =
        Provider.of<JobTypeProvider>(context).getJobTypeById(job.jobTypeId);
    final deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      width: deviceWidth,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const BottomSheetTopHorizontalController(),
          JobDetailsHeader(company: company, jobTitle: job.title),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              JobDetailsCompanyName(company.name),
              JobDetailsJobLocation(job.location),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              JobDetailsJobType(jobType.name),
              JobDetailsSalary(job.salaryFrom),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(child: JobDetailsTab(job)),
        ],
      ),
    );
  }
}
