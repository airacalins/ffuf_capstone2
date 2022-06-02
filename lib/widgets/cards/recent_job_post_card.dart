import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/themes/color_theme.dart';
import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/providers/providers.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class RecentJobPostCard extends StatelessWidget {
  final Job job;
  final Function onTap;

  const RecentJobPostCard({
    Key? key,
    required this.job,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Company company =
        Provider.of<CompanyProvider>(context).getCompanyById(job.companyId);
    final JobType jobType =
        Provider.of<JobTypeProvider>(context).getJobTypeById(job.jobTypeId);
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => onTap(),
      child: CardContainer(
        child: ListTile(
          leading: Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(company.imageUrl),
                width: 50,
              ),
            ),
          ),
          title: Text(
            job.title,
            style: textTheme.bodyText1!.merge(
              const TextStyle(
                fontWeight: FontWeight.bold,
                color: ColorTheme.textColor,
              ),
            ),
          ),
          subtitle: Text(
            jobType.name,
            style: textTheme.caption,
          ),
          trailing: Text(
            '${job.salaryFrom.toStringAsFixed(0)}/m',
            style: textTheme.caption,
          ),
        ),
      ),
    );
  }
}
