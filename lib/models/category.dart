// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Category {
  String id;
  String title;

  Category({
    required this.id,
    required this.title,
  });
}

class Categories with ChangeNotifier {
  // List<Category>
}
