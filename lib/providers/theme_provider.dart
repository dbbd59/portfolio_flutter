import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  Brightness brightnessTheme = Brightness.dark;
  setBrightness(Brightness brightness) {
    print(brightness);
    brightnessTheme = brightness;
    notifyListeners();
  }
}
