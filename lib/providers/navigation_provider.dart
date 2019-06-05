import 'package:flutter/material.dart';
import 'package:portfolio/pages/profile_page.dart';

class NavigationProvider extends ChangeNotifier {
  Widget currentWidget = ProfilePage();
  int currentIndex = 0;
  setCurrentWidget(Widget _current) {
    currentWidget = _current;
    notifyListeners();
  }

  setCurrentIndex(int _index) {
    currentIndex = _index;
    notifyListeners();
  }
}
