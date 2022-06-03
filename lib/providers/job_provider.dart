import 'package:flutter/material.dart';

import 'package:flutter_playground/data/data.dart';
import 'package:flutter_playground/models/models.dart';

class JobProvider with ChangeNotifier {
  final List<Job> _jobs = JobsData.jobs;

  List<Job> get sortedJobsByDate {
    _jobs.sort((a, b) => a.date.compareTo(b.date));
    return _jobs;
  }

  List<Job> get sortedJobsByPopularity {
    _jobs.sort((a, b) => a.numberOfApplicant.compareTo(b.numberOfApplicant));
    return _jobs.take(5).toList();
  }

  Job getJobById(String id) => _jobs.firstWhere((job) => job.id == id);
}
