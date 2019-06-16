import 'package:flutter_web/material.dart';

class StateProvider extends ChangeNotifier {
  String token;
  bool loggedIn = false;
  StateProvider({this.token});

  init() async {
    if (token != null) {
      loggedIn = true;
    } else {
      loggedIn = false;
    }
    notifyListeners();
  }

  setLoggedIn(bool value) {
    if (value) {
      // prefs.setString("token", "1234");
    } else {
      // prefs.remove("token");
    }
    loggedIn = value;
    token = null;
    notifyListeners();
  }
}
