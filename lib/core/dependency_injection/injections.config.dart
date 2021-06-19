// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:portfolio_flutter/core/change_notifier/theme_changenotifier.dart'
    as _i10;
import 'package:portfolio_flutter/core/dependency_injection/register_module.dart'
    as _i11;
import 'package:portfolio_flutter/feature/about_me/bloc/aboutme_bloc.dart'
    as _i8;
import 'package:portfolio_flutter/feature/about_me/repo/about_me_repo.dart'
    as _i3;
import 'package:portfolio_flutter/feature/gh_trend/bloc/github_trend_bloc.dart'
    as _i9;
import 'package:portfolio_flutter/feature/gh_trend/repo/github_trend_repo.dart'
    as _i4;
import 'package:portfolio_flutter/utils/theme/theme_repository.dart' as _i6;
import 'package:portfolio_flutter/utils/utility/utility_repository.dart' as _i7;
import 'package:shared_preferences/shared_preferences.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AboutMeRepo>(() => _i3.AboutMeRepo());
  gh.factory<_i4.GithubTrendRepo>(() => _i4.GithubTrendRepo());
  await gh.factoryAsync<_i5.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i6.ThemeRepository>(() => _i6.ThemeRepository());
  gh.factory<_i7.UtilityRepository>(() => _i7.UtilityRepository());
  gh.factory<_i8.AboutMeBloc>(() => _i8.AboutMeBloc(get<_i3.AboutMeRepo>()));
  gh.factory<_i9.GithubTrendBloc>(
      () => _i9.GithubTrendBloc(get<_i4.GithubTrendRepo>()));
  gh.singleton<_i10.ThemeChangeNotifier>(
      _i10.ThemeChangeNotifier(themeRepository: get<_i6.ThemeRepository>()));
  return get;
}

class _$RegisterModule extends _i11.RegisterModule {}
