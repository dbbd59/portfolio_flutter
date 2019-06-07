import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  Brightness brightnessTheme = Brightness.dark;
  setBrightness(Brightness brightness) {
    brightnessTheme = brightness;
    notifyListeners();
  }
}
