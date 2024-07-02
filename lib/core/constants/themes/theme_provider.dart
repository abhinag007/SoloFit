import 'package:flutter/material.dart';
import 'package:solo_fit/core/constants/themes/themes.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemes.lightTheme; // Initial theme

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme(bool isDark) {
    _currentTheme = isDark ? AppThemes.darkTheme : AppThemes.lightTheme;
    notifyListeners();
  }
}
