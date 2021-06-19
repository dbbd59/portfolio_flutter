// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/utils/theme/theme_repository.dart';

// 🌎 Project imports:

@singleton
class ThemeChangeNotifier extends ChangeNotifier {
  final ThemeRepository themeRepository;

  ThemeChangeNotifier({required this.themeRepository});

  set isDark(bool value) {
    themeRepository.isDark = value;
    notifyListeners();
  }

  bool get isDark {
    return themeRepository.isDark;
  }

  ThemeData lightTheme(BuildContext context) {
    return themeRepository.buildThemeDataLight(context);
  }

  ThemeData darkTheme(BuildContext context) {
    return themeRepository.buildThemeDataDark(context);
  }
}
