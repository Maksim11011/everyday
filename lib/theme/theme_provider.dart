import 'package:flutter/material.dart';
import 'package:everyday/theme/dark_mode.dart';
import 'package:everyday/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // Изначльно, светлый режим
  ThemeData _themeData = darkMode;

  // Текущая тема
  ThemeData get themeData => _themeData;

  // Текущая тема в темном режиме
  bool get isDarkMode => _themeData == darkMode;

  // Установить тему
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // Тумблер переключения темы
  void toogleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
