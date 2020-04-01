import 'package:baseapp/services/api_service.dart';
import 'package:baseapp/services/http_service.dart';
import 'package:baseapp/shared/app_config.dart';
import 'package:baseapp/theme/theme_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../bloc/auth/auth_bloc.dart';
import '../bloc/bottomappbar/bottomappbar_bloc.dart';
import '../bloc/chuck_norris/chucknorris_bloc.dart';
import '../bloc/dialog/dialog_bloc.dart';
import '../bloc/gh_trend/github_trend_bloc.dart';
import '../bloc/news/news_bloc.dart';
import '../repositories/auth/auth_repository.dart';
import '../repositories/utility/utility_repository.dart';

final getIt = GetIt.instance;

Future<void> init({Environment environment}) async {
  await _initLazyServices(environment);
  _initRepositories();
  _initBlocs();
}

void _initBlocs() {
  _blocSingletons();
  _blocFactories();
}

void _blocFactories() {
  getIt.registerFactory(
    () => ChucknorrisBloc(),
  );
  getIt.registerFactory(
    () => GithubTrendBloc(),
  );
  getIt.registerFactory(
    () => NewsBloc(),
  );
}

void _blocSingletons() {
  getIt.registerLazySingleton<AuthBloc>(
    () => AuthBloc(),
  );
  getIt.registerLazySingleton<BottomAppBarBloc>(
    () => BottomAppBarBloc(),
  );
  getIt.registerLazySingleton<DialogBloc>(
    () => DialogBloc(),
  );
}

Future _initLazyServices(Environment environment) async {
  AppConfig config = await AppConfig.forEnvironment(environment);
  getIt.registerSingleton<AppConfig>(config);
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton(sharedPreferences);
  Connectivity connectivity = Connectivity();
  getIt.registerSingleton(connectivity);
  Dio dio = Dio();
  getIt.registerSingleton(dio);
}

void _initRepositories() {
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());
  getIt.registerLazySingleton<UtilityRepository>(() => UtilityRepository());
  getIt.registerSingleton<ThemeRepository>(ThemeRepository());

  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<HttpService>(HttpService());
}
