class Job {
  final String id;
  final String title;
  final String companyId;
  final double salaryFrom;
  final double salaryTo;
  final String location;
  final String categoryId;
  final String subCategoryId;
  final String jobTypeId;
  final List<String> qualifications;
  final DateTime date;
  int numberOfApplicant;

  Job({
    required this.id,
    required this.title,
    required this.companyId,
    required this.salaryFrom,
    required this.salaryTo,
    required this.location,
    required this.categoryId,
    required this.subCategoryId,
    required this.jobTypeId,
    required this.qualifications,
    required this.date,
    this.numberOfApplicant = 0,
  });
}
