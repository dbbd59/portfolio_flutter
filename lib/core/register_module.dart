// 📦 Package imports:
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 🌎 Project imports:
import 'package:baseapp/core/services/api_service.dart';
import 'package:baseapp/core/services/http_service.dart';

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @preResolve
  @singleton
  Dio get dio => Dio();

  @preResolve
  @singleton
  Connectivity get connectivity => Connectivity();

  @preResolve
  @singleton
  HttpService get httpService => HttpService(dio, connectivity);

  @preResolve
  @singleton
  ApiService get apiService => ApiService(httpService);
}
