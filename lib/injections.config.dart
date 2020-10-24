// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// 📦 Package imports:
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 🌎 Project imports:
import 'bloc/about_me/aboutme_bloc.dart';
import 'bloc/auth/auth_bloc.dart';
import 'bloc/bottomappbar/bottomappbar_bloc.dart';
import 'bloc/dialog/dialog_bloc.dart';
import 'bloc/gh_trend/github_trend_bloc.dart';
import 'bloc/news/news_bloc.dart';
import 'change_notifier/theme_changenotifier.dart';
import 'change_notifier/utility_changenotifier.dart';
import 'core/interceptor/dio_connectivity_request_retrier.dart';
import 'core/register_module.dart';
import 'repository/api_service/api_service.dart';
import 'repository/api_service/i_api_service.dart';
import 'repository/auth/auth_repository.dart';
import 'repository/auth/i_auth_repository.dart';
import 'repository/http_service/http_service.dart';
import 'repository/http_service/i_http_service.dart';
import 'repository/theme/i_theme_repository.dart';
import 'repository/theme/theme_repository.dart';
import 'repository/utility/i_utility_repository.dart';
import 'repository/utility/utility_repository.dart';

/// Environment names
const _test = 'test';
const _dev = 'dev';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<DioConnectivityRequestRetrier>(
      () => DioConnectivityRequestRetrier(get<Connectivity>(), get<Dio>()));
  gh.factory<IAuthRepository>(() => MockAuthRepository(), registerFor: {_test});
  gh.factory<IThemeRepository>(() => MockThemeRepository(),
      registerFor: {_test});
  gh.factory<IUtilityRepository>(() => MockUtilityRepository(),
      registerFor: {_test});
  gh.factory<MockAboutMeBloc>(() => MockAboutMeBloc(get<IApiService>()),
      registerFor: {_test});
  gh.factory<NewsBloc>(() => NewsBloc(get<IApiService>()));
  gh.factory<AboutMeBloc>(() => AboutMeBloc(get<IApiService>()),
      registerFor: {_dev});
  gh.factory<GithubTrendBloc>(() => GithubTrendBloc(get<IApiService>()));
  gh.factory<IAuthRepository>(() => AuthRepository(get<SharedPreferences>()),
      registerFor: {_dev});
  gh.factory<IThemeRepository>(() => ThemeRepository(get<SharedPreferences>()),
      registerFor: {_dev});
  gh.factory<IUtilityRepository>(
      () => UtilityRepository(get<SharedPreferences>()),
      registerFor: {_dev});

  // Eager singletons must be registered in the right order
  gh.singleton<AuthBloc>(AuthBloc());
  gh.singleton<BottomAppBarBloc>(BottomAppBarBloc());
  gh.singleton<Connectivity>(registerModule.connectivity);
  gh.singleton<DialogBloc>(DialogBloc());
  gh.singleton<Dio>(registerModule.dio);
  gh.singleton<IApiService>(MockApiService(), registerFor: {_test});
  gh.singleton<IHttpService>(HttpService(get<Dio>(), get<Connectivity>()),
      registerFor: {_dev});
  gh.singleton<IHttpService>(MockHttpService(), registerFor: {_test});
  final sharedPreferences = await registerModule.prefs;
  gh.singleton<SharedPreferences>(sharedPreferences, registerFor: {_dev});
  gh.singleton<ThemeChangeNotifier>(
      ThemeChangeNotifier(get<IThemeRepository>()));
  gh.singleton<UtilityChangeNotifier>(
      UtilityChangeNotifier(get<IUtilityRepository>()));
  gh.singleton<IApiService>(ApiService(get<IHttpService>()),
      registerFor: {_dev});
  return get;
}

class _$RegisterModule extends RegisterModule {}
