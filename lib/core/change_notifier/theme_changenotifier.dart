// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:injectable/injectable.dart';
import 'package:portfolio_flutter/core/core.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/utils/theme/theme_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 🌎 Project imports:

@singleton
class ThemeChangeNotifier extends ChangeNotifier {
  ThemeChangeNotifier({required this.themeRepository});

  final ThemeRepository themeRepository;

  bool _isFpsEnable = getIt<SharedPreferences>().getBool('fps') ?? false;

  set isDark(bool value) {
    themeRepository.isDark = value;
    notifyListeners();
  }

  bool get isDark {
    return themeRepository.isDark;
  }

  set enableFps(bool value) {
    _isFpsEnable = value;
    notifyListeners();
    getIt<SharedPreferences>().setBool('fps', value);
  }

  bool get isFpsEnable {
    _isFpsEnable = getIt<SharedPreferences>().getBool('fps') ?? false;
    return _isFpsEnable;
  }

  ThemeData lightTheme(BuildContext context) {
    return themeRepository.buildThemeDataLight(context);
  }

  ThemeData darkTheme(BuildContext context) {
    return themeRepository.buildThemeDataDark(context);
  }
}
