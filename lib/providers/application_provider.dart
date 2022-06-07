import 'package:flutter/material.dart';

import 'package:flutter_playground/data/data.dart';
import 'package:flutter_playground/models/models.dart';

class ApplicationProvider with ChangeNotifier {
  final List<Application> _applications = ApplicationsData.applications;

  List<Application> get applications => _applications;

  Application getApplicationById(String id) =>
      _applications.firstWhere((application) => application.id == id);
}
