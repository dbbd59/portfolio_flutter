// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import 'bloc/about_me/aboutme_bloc.dart' as _i3;
import 'bloc/auth/auth_bloc.dart' as _i5;
import 'bloc/bottomappbar/bottomappbar_bloc.dart' as _i15;
import 'bloc/dialog/dialog_bloc.dart' as _i16;
import 'bloc/gh_trend/github_trend_bloc.dart' as _i6;
import 'bloc/news/news_bloc.dart' as _i14;
import 'change_notifier/theme_changenotifier.dart' as _i17;
import 'change_notifier/utility_changenotifier.dart' as _i18;
import 'core/register_module.dart' as _i19;
import 'repository/api_service/api_service.dart' as _i4;
import 'repository/auth/auth_repository.dart' as _i8;
import 'repository/auth/i_auth_repository.dart' as _i7;
import 'repository/theme/i_theme_repository.dart' as _i10;
import 'repository/theme/theme_repository.dart' as _i11;
import 'repository/utility/i_utility_repository.dart' as _i12;
import 'repository/utility/utility_repository.dart' as _i13;

const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AboutMeBloc>(() => _i3.AboutMeBloc(get<_i4.ApiService>()),
      registerFor: {_dev});
  gh.factory<_i4.ApiService>(() => _i4.ApiService(), registerFor: {_dev});
  gh.factory<_i5.AuthBloc>(() => _i5.AuthBloc());
  gh.factory<_i6.GithubTrendBloc>(
      () => _i6.GithubTrendBloc(get<_i4.ApiService>()));
  gh.factory<_i7.IAuthRepository>(
      () => _i8.AuthRepository(get<_i9.SharedPreferences>()),
      registerFor: {_dev});
  gh.factory<_i10.IThemeRepository>(
      () => _i11.ThemeRepository(get<_i9.SharedPreferences>()),
      registerFor: {_dev});
  gh.factory<_i12.IUtilityRepository>(
      () => _i13.UtilityRepository(get<_i9.SharedPreferences>()),
      registerFor: {_dev});
  gh.factory<_i14.NewsBloc>(() => _i14.NewsBloc(get<_i4.ApiService>()));
  gh.singleton<_i15.BottomAppBarBloc>(_i15.BottomAppBarBloc());
  gh.singleton<_i16.DialogBloc>(_i16.DialogBloc());
  await gh.singletonAsync<_i9.SharedPreferences>(() => registerModule.prefs,
      registerFor: {_dev}, preResolve: true);
  gh.singleton<_i17.ThemeChangeNotifier>(
      _i17.ThemeChangeNotifier(get<_i10.IThemeRepository>()));
  gh.singleton<_i18.UtilityChangeNotifier>(
      _i18.UtilityChangeNotifier(get<_i12.IUtilityRepository>()));
  return get;
}

class _$RegisterModule extends _i19.RegisterModule {}
