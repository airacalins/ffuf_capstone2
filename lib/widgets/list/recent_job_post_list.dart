import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/providers/providers.dart';
import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/screens/screens.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class RecentJobPostList extends StatelessWidget {
  const RecentJobPostList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recentJobs = Provider.of<JobProvider>(context).sortedJobsByDate;
    final deviceHeight = MediaQuery.of(context).size.height;

    void handleShowJobDetails(Job job) {
      showModalBottomSheet(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(40.0))),
        isScrollControlled: true,
        constraints: BoxConstraints(maxHeight: deviceHeight * 0.88),
        context: context,
        builder: (context) => JobDetailsScreen(job),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => RecentJobPostCard(
        job: recentJobs[index],
        onTap: () => handleShowJobDetails(recentJobs[index]),
      ),
      itemCount: recentJobs.length,
    );
  }
}
