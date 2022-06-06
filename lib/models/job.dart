class Job {
  final int id;
  final String title;
  final int companyId;
  final double salary;
  final String location;
  final int categoryId;
  final int subCategoryId;
  final int jobTypeId;
  final List<String> qualifications;
  final DateTime date;
  final int numberOfApplicant;

  Job({
    required this.id,
    required this.title,
    required this.companyId,
    required this.salary,
    required this.location,
    required this.categoryId,
    required this.subCategoryId,
    required this.jobTypeId,
    required this.qualifications,
    required this.date,
    this.numberOfApplicant = 0,
  });
}
