import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  Brightness brightnessTheme = Brightness.light;
  setBrightness(Brightness brightness) {
    brightnessTheme = brightness;
    notifyListeners();
  }
}
