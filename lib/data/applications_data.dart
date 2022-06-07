import 'package:flutter_playground/models/models.dart';

class ApplicationsData {
  static List<Application> applications = [
    Application(
      id: 1,
      jobId: '8',
      applicationStatus: ApplicationStatus.Pending,
    ),
    Application(
      id: 2,
      jobId: '9',
      applicationStatus: ApplicationStatus.Delivered,
    ),
    Application(
      id: 3,
      jobId: '10',
      applicationStatus: ApplicationStatus.Declined,
    )
  ];
}
