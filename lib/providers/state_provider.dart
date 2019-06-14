import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StateProvider extends ChangeNotifier {
  String token;
  SharedPreferences prefs;
  bool loggedIn = false;
  StateProvider({this.token});

  init() async {
    prefs = await SharedPreferences.getInstance();

    if (token != null) {
      loggedIn = true;
    } else {
      loggedIn = false;
    }
    notifyListeners();
  }

  setLoggedIn(bool value) {
    if (value) {
      prefs.setString("token", "1234");
    } else {
      prefs.remove("token");
    }
    loggedIn = value;
    token = null;
    notifyListeners();
  }
}
