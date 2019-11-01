import 'package:flutter/material.dart';
import 'package:portfolio/pages/welcome_page.dart';

class NavigationProvider extends ChangeNotifier {
  Widget currentWidget = WelcomePage();
  int currentIndex = 3;
  setCurrentWidget(Widget _current) {
    currentWidget = _current;
    notifyListeners();
  }

  setCurrentIndex(int _index) {
    currentIndex = _index;
    notifyListeners();
  }
}
