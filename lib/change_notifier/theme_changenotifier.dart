// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:baseapp/repositories/theme/i_theme_repository.dart';

@Singleton()
class ThemeChangeNotifier extends ChangeNotifier {
  final IThemeRepository _themeRepository;

  ThemeChangeNotifier(this._themeRepository);

  set pippo(bool value) {
    _themeRepository.isDark = value;
    notifyListeners();
  }

  bool get pippo {
    return _themeRepository.isDark;
  }

  ThemeData lightTheme(BuildContext context) {
    return _themeRepository.buildThemeDataLight(context);
  }

  ThemeData darkTheme(BuildContext context) {
    return _themeRepository.buildThemeDataDark(context);
  }
}
