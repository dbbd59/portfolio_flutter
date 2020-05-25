// 🐦 Flutter imports:
import 'package:flutter/material.dart';

abstract class IThemeRepository  {
  bool get isDark;

  set isDark(bool value);

  ThemeData buildThemeDataLight(BuildContext context);

  ThemeData buildThemeDataDark(BuildContext context);
}
