// 🎯 Dart imports:
import 'dart:async';

// � Package imports:
import 'package:bloc/bloc.dart';
// �🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
// 🌎 Project imports:
import 'package:portfolio_flutter/feature/gh_trend/repo/github_trend_repo.dart';
import 'package:portfolio_flutter/model/github_trend.dart';

part 'github_trend_bloc.freezed.dart';
part 'github_trend_event.dart';
part 'github_trend_state.dart';

@Injectable()
class GithubTrendBloc extends Bloc<GithubTrendEvent, GithubTrendState> {
  GithubTrendBloc(this.repo) : super(const GithubTrendState.empty());

  final GithubTrendRepo repo;

  @override
  Stream<GithubTrendState> mapEventToState(
    GithubTrendEvent event,
  ) async* {
    yield* event.map(
      fetchTrends: (e) async* {
        try {
          yield const GithubTrendState.loading();
          final gitHubTrends = await repo.fetchGitHubTrends();
          yield GithubTrendState.loaded(gitHubTrends);
        } catch (_) {
          yield const GithubTrendState.error();
        }
      },
      // ignore: no-empty-block
      reset: (e) async* {},
    );
  }
}
