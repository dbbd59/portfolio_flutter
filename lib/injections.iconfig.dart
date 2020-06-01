// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:portfolio_flutter/bloc/auth/auth_bloc.dart';
import 'package:portfolio_flutter/bloc/bottomappbar/bottomappbar_bloc.dart';
import 'package:portfolio_flutter/core/register_module.dart';
import 'package:connectivity/connectivity.dart';
import 'package:portfolio_flutter/bloc/dialog/dialog_bloc.dart';
import 'package:dio/dio.dart';
import 'package:portfolio_flutter/core/interceptor/dio_connectivity_request_retrier.dart';
import 'package:portfolio_flutter/repository/api_service/api_service.dart';
import 'package:portfolio_flutter/repository/api_service/i_api_service.dart';
import 'package:portfolio_flutter/repository/auth/auth_repository.dart';
import 'package:portfolio_flutter/repository/auth/i_auth_repository.dart';
import 'package:portfolio_flutter/repository/http_service/http_service.dart';
import 'package:portfolio_flutter/repository/http_service/i_http_service.dart';
import 'package:portfolio_flutter/repository/theme/theme_repository.dart';
import 'package:portfolio_flutter/repository/theme/i_theme_repository.dart';
import 'package:portfolio_flutter/repository/utility/utility_repository.dart';
import 'package:portfolio_flutter/repository/utility/i_utility_repository.dart';
import 'package:portfolio_flutter/bloc/about_me/aboutme_bloc.dart';
import 'package:portfolio_flutter/bloc/news/news_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:portfolio_flutter/change_notifier/theme_changenotifier.dart';
import 'package:portfolio_flutter/change_notifier/utility_changenotifier.dart';
import 'package:portfolio_flutter/bloc/gh_trend/github_trend_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  g.registerFactory<DioConnectivityRequestRetrier>(
      () => DioConnectivityRequestRetrier(g<Connectivity>(), g<Dio>()));
  g.registerFactory<NewsBloc>(() => NewsBloc(g<IApiService>()));
  g.registerFactory<GithubTrendBloc>(() => GithubTrendBloc(g<IApiService>()));

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerFactory<IAuthRepository>(() => MockAuthRepository());
    g.registerFactory<IThemeRepository>(() => MockThemeRepository());
    g.registerFactory<IUtilityRepository>(() => MockUtilityRepository());
    g.registerFactory<MockAboutMeBloc>(() => MockAboutMeBloc(g<IApiService>()));
  }

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerFactory<AboutMeBloc>(() => AboutMeBloc(g<IApiService>()));
    g.registerFactory<IAuthRepository>(
        () => AuthRepository(g<SharedPreferences>()));
    g.registerFactory<IThemeRepository>(
        () => ThemeRepository(g<SharedPreferences>()));
    g.registerFactory<IUtilityRepository>(
        () => UtilityRepository(g<SharedPreferences>()));
  }

  //Eager singletons must be registered in the right order
  g.registerSingleton<AuthBloc>(AuthBloc());
  g.registerSingleton<BottomAppBarBloc>(BottomAppBarBloc());
  g.registerSingleton<Connectivity>(registerModule.connectivity);
  g.registerSingleton<DialogBloc>(DialogBloc());
  g.registerSingleton<Dio>(registerModule.dio);
  if (environment == 'test') {
    g.registerSingleton<IApiService>(MockApiService());
  }
  if (environment == 'dev') {
    g.registerSingleton<IHttpService>(HttpService(g<Dio>(), g<Connectivity>()));
  }
  if (environment == 'test') {
    g.registerSingleton<IHttpService>(MockHttpService());
  }
  if (environment == 'dev') {
    final sharedPreferences = await registerModule.prefs;
    g.registerSingleton<SharedPreferences>(sharedPreferences);
  }
  g.registerSingleton<ThemeChangeNotifier>(
      ThemeChangeNotifier(g<IThemeRepository>()));
  g.registerSingleton<UtilityChangeNotifier>(
      UtilityChangeNotifier(g<IUtilityRepository>()));
  if (environment == 'dev') {
    g.registerSingleton<IApiService>(ApiService(g<IHttpService>()));
  }
}

class _$RegisterModule extends RegisterModule {}
