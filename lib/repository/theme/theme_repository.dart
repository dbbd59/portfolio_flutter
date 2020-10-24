// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/repository/theme/i_theme_repository.dart';

@Injectable(as: IThemeRepository, env: [Env.dev])
class ThemeRepository implements IThemeRepository {
  ThemeRepository(
    this._prefs,
  );

  final SharedPreferences _prefs;
  @override
  bool get isDark {
    return _prefs.getBool("isDarkMode") ?? false;
  }

  @override
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
      primaryColor: Color(0xFF121212),
      accentColor: Color(0xFFdbbd59),
    );
  }

  @override
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
      primaryColor: Color(0xFFdbbd59),
      accentColor: Color(0xFFdbbd59),
    );
  }

  @override
  set isDark(bool value) {
    _prefs.setBool("isDarkMode", value);
  }
}

@Injectable(as: IThemeRepository, env: [Env.test])
class MockThemeRepository extends Mock implements IThemeRepository {}
