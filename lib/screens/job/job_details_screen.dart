import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/themes/color_theme.dart';
import 'package:flutter_playground/models/models.dart';
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
    final textTheme = Theme.of(context).textTheme;
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
          const SizedBox(
            height: 10,
          ),
          const BottomSheetTopHorizontalController(),
          header(company, textTheme),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              companyName(company),
              jobLocation(),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.access_time,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    jobType.name,
                    style: textTheme.titleMedium!.merge(
                      TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
              salary(textTheme)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: JobDetailsTab(job),
          ),
        ],
      ),
    );
  }

  Column header(Company company, TextTheme textTheme) {
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
          job.title,
          textAlign: TextAlign.center,
          style: textTheme.headline4,
        ),
      ],
    );
  }

  Row jobLocation() {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: Colors.grey.shade600,
          size: 20,
        ),
        const SizedBox(width: 5),
        Text(job.location)
      ],
    );
  }

  Row companyName(Company company) {
    return Row(
      children: [
        Text(
          company.name,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          height: 2,
          width: 20,
          color: ColorTheme.textColor,
        ),
      ],
    );
  }

  Text salary(TextTheme textTheme) {
    return Text(
      '\$${job.salaryFrom.toStringAsFixed(0)}/m',
      style: textTheme.titleMedium!.merge(
        TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.grey.shade600,
        ),
      ),
    );
  }
}
