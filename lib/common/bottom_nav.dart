import 'package:flutter/material.dart';

class BottomNav with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void homeScreen() {
    _currentIndex = 0;
    notifyListeners();
  }

  void messageScreen() {
    _currentIndex = 1;
    notifyListeners();
  }

  void profileScreen() {
    _currentIndex = 2;
    notifyListeners();
  }

  void settingScreen() {
    _currentIndex = 3;
    notifyListeners();
  }

  void onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
