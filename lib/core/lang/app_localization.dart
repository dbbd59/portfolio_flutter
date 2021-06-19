// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

// 🎯 Dart imports:
import 'dart:ui';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "nav_gh": "GitHub Trend",
  "nav_about_me": "About Me",
  "nav_settings": "Settings"
};
static const Map<String,dynamic> it = {
  "nav_gh": "GitHub Trend",
  "nav_about_me": "Chi sono",
  "nav_settings": "Impostazioni"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "it": it};
}
