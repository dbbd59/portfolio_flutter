import 'package:baseapp/shared/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeRepository extends ChangeNotifier {
  bool get isDark {
    return getIt<SharedPreferences>().getBool("isDarkMode") ?? false;
  }

  set isDark(bool value) {
    getIt<SharedPreferences>().setBool("isDarkMode", value);
    notifyListeners();
  }

  ThemeData buildThemeDataLight(BuildContext context) {
    return ThemeData(
      textTheme: GoogleFonts.latoTextTheme(
        ThemeData(brightness: Brightness.light).textTheme,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
        },
      ),
      brightness: Brightness.light,
      primaryColor: Color(0xFFdbbd59),
      accentColor: Color(0xFFdbbd59),
    );
  }

  ThemeData buildThemeDataDark(BuildContext context) {
    return ThemeData(
      textTheme: GoogleFonts.latoTextTheme(
        ThemeData(brightness: Brightness.dark).textTheme,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
        },
      ),
      brightness: Brightness.dark,
      accentColor: Color(0xFFdbbd59),
      primaryColor: Color(0xFFdbbd59),
    );
  }
}
