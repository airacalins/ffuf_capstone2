import 'package:flutter/material.dart';
import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/data/data.dart';

class UserProvider with ChangeNotifier {
  final List<User> _users = UsersData.users;

  User getLoginUser(String userId) {
    return _users.firstWhere((user) => user.id == userId);
  }

  User getUserById(String userId) {
    return _users.firstWhere((user) => user.id == userId);
  }
}
