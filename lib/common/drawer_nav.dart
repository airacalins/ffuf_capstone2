import 'package:flutter/material.dart';

class DrawerNav with ChangeNotifier {
  double _xOffset = 0;
  double _yOffset = 0;
  double _scaleFactor = 1;
  bool _isDrawerOpen = false;

  double get xOffset => _xOffset;
  double get yOffset => _yOffset;
  double get scaleFactor => _scaleFactor;
  bool get isDrawerOpen => _isDrawerOpen;

  void open() {
    _xOffset = 300;
    _yOffset = 80;
    _scaleFactor = 0.8;
    _isDrawerOpen = true;
    notifyListeners();
  }

  void close() {
    _xOffset = 0;
    _yOffset = 0;
    _scaleFactor = 1;
    _isDrawerOpen = false;
    notifyListeners();
  }
}
