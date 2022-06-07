// ignore_for_file: constant_identifier_names

enum ApplicationStatus {
  Pending,
  Delivered,
  Processing,
  Hired,
  Declined,
}

class Application {
  final int id;
  final String jobId;
  final ApplicationStatus applicationStatus;

  Application({
    required this.id,
    required this.jobId,
    required this.applicationStatus,
  });

  String get applicationStatusText {
    switch (applicationStatus) {
      case ApplicationStatus.Pending:
        return 'Pending';
      case ApplicationStatus.Delivered:
        return 'Delivered';
      case ApplicationStatus.Processing:
        return 'Processing';
      case ApplicationStatus.Hired:
        return 'Hired';
      case ApplicationStatus.Declined:
        return 'Declined';
      default:
        'NA';
    }
    throw ('NA');
  }
}
