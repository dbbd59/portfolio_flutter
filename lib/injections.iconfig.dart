// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// 📦 Package imports:
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/interceptor/dio_connectivity_request_retrier.dart';
import 'package:portfolio_flutter/core/register_module.dart';
import 'package:portfolio_flutter/core/services/api_service.dart';
import 'package:portfolio_flutter/bloc/auth/auth_bloc.dart';
import 'package:portfolio_flutter/bloc/bottomappbar/bottomappbar_bloc.dart';
import 'package:portfolio_flutter/bloc/chuck_norris/chucknorris_bloc.dart';
import 'package:portfolio_flutter/core/services/http_service.dart';
import 'package:portfolio_flutter/repository/auth/auth_repository.dart';
import 'package:portfolio_flutter/repository/auth/i_auth_repository.dart';
import 'package:portfolio_flutter/repository/theme/theme_repository.dart';
import 'package:portfolio_flutter/repository/utility/i_utility_repository.dart';
import 'package:portfolio_flutter/repository/utility/utility_repository.dart';
import 'package:portfolio_flutter/bloc/dialog/dialog_bloc.dart';
import 'package:portfolio_flutter/bloc/gh_trend/github_trend_bloc.dart';
import 'package:portfolio_flutter/bloc/news/news_bloc.dart';
import 'package:portfolio_flutter/repository/theme/i_theme_repository.dart';
import 'package:portfolio_flutter/change_notifier/theme_changenotifier.dart';
import 'package:portfolio_flutter/change_notifier/utility_changenotifier.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  g.registerFactory<ChucknorrisBloc>(() => ChucknorrisBloc(g<ApiService>()));
  g.registerFactory<DioConnectivityRequestRetrier>(
      () => DioConnectivityRequestRetrier(g<Connectivity>(), g<Dio>()));
  g.registerFactory<GithubTrendBloc>(() => GithubTrendBloc(g<ApiService>()));
  g.registerFactory<NewsBloc>(() => NewsBloc(g<ApiService>()));
  g.registerFactory<IAuthRepository>(
      () => AuthRepository(g<SharedPreferences>()));
  g.registerFactory<IThemeRepository>(
      () => ThemeRepository(g<SharedPreferences>()));
  g.registerFactory<IUtilityRepository>(
      () => UtilityRepository(g<SharedPreferences>()));

  //Eager singletons must be registered in the right order
  g.registerSingleton<ApiService>(registerModule.apiService);
  g.registerSingleton<AuthBloc>(AuthBloc());
  g.registerSingleton<BottomAppBarBloc>(BottomAppBarBloc());
  g.registerSingleton<Connectivity>(registerModule.connectivity);
  g.registerSingleton<DialogBloc>(DialogBloc());
  g.registerSingleton<Dio>(registerModule.dio);
  g.registerSingleton<HttpService>(registerModule.httpService);
  final sharedPreferences = await registerModule.prefs;
  g.registerSingleton<SharedPreferences>(sharedPreferences);
  g.registerSingleton<ThemeChangeNotifier>(
      ThemeChangeNotifier(g<IThemeRepository>()));
  g.registerSingleton<UtilityChangeNotifier>(
      UtilityChangeNotifier(g<IUtilityRepository>()));
}

class _$RegisterModule extends RegisterModule {}
