import 'package:flutter/material.dart';

import 'package:flutter_playground/data/data.dart';
import 'package:flutter_playground/models/models.dart';

class JobTypeProvider with ChangeNotifier {
  final List<JobType> _jobTypes = JobTypesData.jobTypes;

  JobType getJobTypeById(String id) {
    return [..._jobTypes].firstWhere((jobType) => jobType.id == id);
  }
}
