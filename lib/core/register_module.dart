// 📦 Package imports:
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/injections.dart';

@module
abstract class RegisterModule {
  @Environment(Env.dev)
  @preResolve
  @singleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
