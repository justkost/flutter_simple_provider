import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  final darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
  );

  final lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
  );

  bool isLight = true;

  ThemeData _themeData;

  ThemeNotifier() {
    _themeData = lightTheme;
  }

  getTheme() => _themeData;

  switchToLight() {
    _themeData = lightTheme;
    isLight = true;
    notifyListeners();
  }

  switchToDark() {
    _themeData = darkTheme;
    isLight = false;
    notifyListeners();
  }
}