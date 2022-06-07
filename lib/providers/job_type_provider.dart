import 'package:flutter/material.dart';

import 'package:flutter_playground/data/data.dart';
import 'package:flutter_playground/models/models.dart';

class JobTypeProvider with ChangeNotifier {
  JobType getJobTypeById(int id) => JobTypesData.jobTypes.firstWhere((jobType) => jobType.id == id);
}
