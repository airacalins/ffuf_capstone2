import 'package:flutter/material.dart';

import 'package:flutter_playground/data/data.dart';
import 'package:flutter_playground/models/models.dart';

class CompanyProvider with ChangeNotifier {
  final List<Company> _companies = CompanyData.companies;

  List<Company> get companies => [..._companies];

  Company getCompanyById(String id) {
    return [..._companies].firstWhere((company) => company.id == id);
  }
}
