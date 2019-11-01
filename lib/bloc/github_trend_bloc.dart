import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:portfolio/models/github_trend.dart';
import 'package:portfolio/server.dart';
import './bloc.dart';

class GithubTrendBloc extends Bloc<GithubTrendEvent, GithubTrendState> {
  GithubTrendBloc({Api api}) : _api = api;

  final Api _api;
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
            await _api.fetchGitHubTrends();
        yield GithubTrendLoaded(listGitHubTrends: listGitHubTrends);
      } catch (_) {
        yield GithubTrendError();
      }
    }
  }
}
