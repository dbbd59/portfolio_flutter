import 'dart:async';
import 'package:baseapp/models/github_trend.dart';
import 'package:baseapp/services/api_service.dart';
import 'package:baseapp/shared/injection_container.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'github_trend_event.dart';
part 'github_trend_state.dart';

class GithubTrendBloc extends Bloc<GithubTrendEvent, GithubTrendState> {
  @override
  GithubTrendState get initialState => GithubTrendEmpty();

  @override
  Stream<GithubTrendState> mapEventToState(
    GithubTrendEvent event,
  ) async* {
    if (event is FetchGitHubTrends) {
      yield GithubTrendLoading();
      try {
        final List<GitHubTrend> listGitHubTrends =
            await getIt<ApiService>().fetchGitHubTrends();
        yield GithubTrendLoaded(listGitHubTrends: listGitHubTrends);
      } catch (_) {
        yield GithubTrendError();
      }
    }
  }
}
