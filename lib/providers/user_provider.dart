import 'package:flutter/material.dart';
import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/data/data.dart';

class UserProvider with ChangeNotifier {
  final List<User> _users = UsersData.users;
  User? _currentLoginUser;

  User getLoginUser(int userId) => _users.firstWhere((user) => user.id == userId);
  User getUserById(int userId) => _users.firstWhere((user) => user.id == userId);
  User? get getCurrentLoginUser => _currentLoginUser;

  void registerUser(User user) {
    if (_users.map((user) => user.email).contains(user.email)) {
      return;
    }

    final lastUser = _users.last;

    final User newUser = User(
      id: lastUser.id + 1,
      firstName: '',
      lastName: '',
      username: '',
      imageUrl: '',
      email: user.email,
      password: user.password,
    );
    _users.add(newUser);
    // notifyListeners();
  }

  void loginUser(String email, String password) {
    var user = _users.firstWhere((user) => user.email == email && user.password == password);
    if (user == null) {
      return;
    } else {
      _currentLoginUser = user;
    }
    notifyListeners();
  }

  void logOutUser() {
    _currentLoginUser = null;
    notifyListeners();
  }
}
