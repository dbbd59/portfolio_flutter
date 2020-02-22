import 'package:baseapp/bloc/auth/auth_bloc.dart';
import 'package:baseapp/bloc/auth/login_bloc.dart';
import 'package:baseapp/bloc/bottomappbar/bottomappbar_bloc.dart';
import 'package:baseapp/bloc/chuck_norris/chucknorris_bloc.dart';
import 'package:baseapp/bloc/dialog/dialog_bloc.dart';
import 'package:baseapp/bloc/gh_trend/github_trend_bloc.dart';
import 'package:baseapp/bloc/news/news_bloc.dart';
import 'package:baseapp/repositories/auth/auth_repository.dart';
import 'package:baseapp/repositories/utility/utility_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  _initRepositories();
  await _initLazyServices();
  _initBlocs();
}

void _initBlocs() {
  sl.registerLazySingleton<AuthBloc>(
    () => AuthBloc(),
  );

  sl.registerLazySingleton<LoginBloc>(
    () => LoginBloc(),
  );
  sl.registerLazySingleton<BottomAppBarBloc>(
    () => BottomAppBarBloc(),
  );

  sl.registerLazySingleton<DialogBloc>(
    () => DialogBloc(),
  );

  sl.registerLazySingleton<ChucknorrisBloc>(
    () => ChucknorrisBloc(),
  );
  sl.registerLazySingleton<GithubTrendBloc>(
    () => GithubTrendBloc(),
  );
  sl.registerLazySingleton<NewsBloc>(
    () => NewsBloc(),
  );
}

Future _initLazyServices() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}

void _initRepositories() {
  sl.registerLazySingleton<AuthRepository>(() => AuthRepository());
  sl.registerLazySingleton<UtilityRepository>(() => UtilityRepository());
}
