// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/services/api_service.dart';
import 'package:portfolio_flutter/model/github_trend.dart';

// 🌎 Project imports:

part 'github_trend_event.dart';
part 'github_trend_state.dart';

@Injectable()
class GithubTrendBloc extends Bloc<GithubTrendEvent, GithubTrendState> {
  GithubTrendBloc(this._apiService);

  ApiService _apiService;

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
            await _apiService.fetchGitHubTrends();
        yield GithubTrendLoaded(listGitHubTrends: listGitHubTrends);
      } catch (_) {
        yield GithubTrendError();
      }
    }
  }
}
