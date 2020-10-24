// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/model/github_trend.dart';
import 'package:portfolio_flutter/repository/api_service/i_api_service.dart';

part 'github_trend_event.dart';
part 'github_trend_state.dart';
part 'github_trend_bloc.freezed.dart';

@Injectable()
class GithubTrendBloc extends Bloc<GithubTrendEvent, GithubTrendState> {
  GithubTrendBloc(this._apiService) : super(GithubTrendState.empty());

  IApiService _apiService;

  @override
  Stream<GithubTrendState> mapEventToState(
    GithubTrendEvent event,
  ) async* {
    yield* event.map(
      fetchTrends: (e) async* {
        try {
          yield GithubTrendState.loading();
          final List<GitHubTrend> gitHubTrends =
              await _apiService.fetchGitHubTrends();
          yield GithubTrendState.loaded(gitHubTrends);
        } catch (_) {
          yield GithubTrendState.error();
        }
      },
      reset: (e) async* {},
    );
  }
}
