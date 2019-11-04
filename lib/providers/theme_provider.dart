import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  Brightness brightnessTheme = Brightness.light;
  setBrightness(Brightness brightness) {
    brightnessTheme = brightness;
    if (brightnessTheme == Brightness.dark) {
      setPrimaryColor(Colors.grey);
    } else {
      setPrimaryColor(Color(0xFFdbbd59));
    }
    notifyListeners();
  }

  Color primaryColorTheme = Color(0xFFdbbd59);
  setPrimaryColor(Color color) {
    primaryColorTheme = color;
    notifyListeners();
  }
}
