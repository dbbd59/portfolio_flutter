import 'package:baseapp/bloc/auth/auth_bloc.dart';
import 'package:baseapp/bloc/auth/login_bloc.dart';
import 'package:baseapp/bloc/bottomappbar/bottomappbar_bloc.dart';
import 'package:baseapp/bloc/chuck_norris/chucknorris_bloc.dart';
import 'package:baseapp/bloc/dialog/dialog_bloc.dart';
import 'package:baseapp/bloc/gh_trend/github_trend_bloc.dart';
import 'package:baseapp/bloc/news/news_bloc.dart';
import 'package:baseapp/helpers/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

var providers = [
  BlocProvider<AuthBloc>(
    create: (context) => sl<AuthBloc>()
      ..add(
        AuthEventStart(),
      ),
  ),
  BlocProvider<LoginBloc>(
    create: (context) => sl<LoginBloc>(),
  ),
  BlocProvider<BottomAppBarBloc>(
    create: (context) => sl<BottomAppBarBloc>(),
  ),
  BlocProvider<DialogBloc>(
    create: (context) => sl<DialogBloc>(),
  ),
  BlocProvider<ChucknorrisBloc>(
    create: (context) => sl<ChucknorrisBloc>(),
  ),
  BlocProvider<NewsBloc>(
    create: (context) => sl<NewsBloc>(),
  ),
  BlocProvider<GithubTrendBloc>(
    create: (context) => sl<GithubTrendBloc>(),
  ),
];
