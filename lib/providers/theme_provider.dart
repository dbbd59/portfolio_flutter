import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  Brightness brightnessTheme = Brightness.light;
  setBrightness(Brightness brightness) {
    brightnessTheme = brightness;
    if (brightnessTheme == Brightness.dark) {
      setPrimaryColor(Colors.grey);
    } else {
      setPrimaryColor(Colors.blue);
    }
    notifyListeners();
  }

  Color primaryColorTheme = Colors.blue;
  setPrimaryColor(Color color) {
    primaryColorTheme = color;
    notifyListeners();
  }
}
