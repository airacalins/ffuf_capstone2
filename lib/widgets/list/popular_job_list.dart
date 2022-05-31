import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/providers/providers.dart';
import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/screens/screens.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class PopularJobList extends StatelessWidget {
  const PopularJobList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popularJobs = Provider.of<JobProvider>(context).polularJobs;
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
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: popularJobs.length,
      itemBuilder: (BuildContext context, int index) => PopularJobCard(
        job: popularJobs[index],
        onTap: () => handleShowJobDetails(popularJobs[index]),
      ),
    );
  }
}
