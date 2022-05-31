import 'package:flutter/material.dart';

import 'package:flutter_playground/data/data.dart';
import 'package:flutter_playground/models/models.dart';

class JobProvider with ChangeNotifier {
  final List<Job> _jobs = JobsData.jobs;

  List<Job> get recentJobs {
    final jobs = [..._jobs];
    jobs.sort((a, b) => a.date.compareTo(b.date));
    return jobs.toList();
  }

  List<Job> get polularJobs {
    final jobs = [..._jobs];
    jobs.sort((a, b) => a.numberOfApplicant.compareTo(b.numberOfApplicant));
    return jobs.take(5).toList();
  }

  int get jobsCount => _jobs.length;

  Job getJobById(String id) {
    return _jobs.firstWhere((job) => job.id == id);
  }
}
