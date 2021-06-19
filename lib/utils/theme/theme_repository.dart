// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_flutter/core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class ThemeRepository {
  bool get isDark {
    return getIt<SharedPreferences>().getBool('isDarkMode') ?? false;
  }

  ThemeData buildThemeDataDark(BuildContext context) {
    return ThemeData(
      textTheme: GoogleFonts.latoTextTheme(
        ThemeData(brightness: Brightness.dark).textTheme,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF121212),
      accentColor: const Color(0xFFdbbd59),
      colorScheme: const ColorScheme.dark(primary: Color(0xFFdbbd59)),
    );
  }

  ThemeData buildThemeDataLight(BuildContext context) {
    return ThemeData(
      textTheme: GoogleFonts.latoTextTheme(
        ThemeData(brightness: Brightness.light).textTheme,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      brightness: Brightness.light,
      primaryColor: const Color(0xFFdbbd59),
      accentColor: const Color(0xFFdbbd59),
      colorScheme: const ColorScheme.light(primary: Color(0xFFdbbd59)),
    );
  }

  set isDark(bool value) {
    getIt<SharedPreferences>().setBool('isDarkMode', value);
  }
}
