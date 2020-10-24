// 📦 Package imports:
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
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

  @preResolve
  @singleton
  Dio get dio => Dio();

  @preResolve
  @singleton
  Connectivity get connectivity => Connectivity();
}
