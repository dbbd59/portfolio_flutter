part of 'github_trend_bloc.dart';

@freezed
class GithubTrendState with _$GithubTrendState {
  const factory GithubTrendState.empty() = GithubTrendEmpty;
  const factory GithubTrendState.loaded(List<GitHubTrend>? gitHubTrends) =
      GithubTrendLoaded;
  const factory GithubTrendState.loading() = GithubTrendLoading;
  const factory GithubTrendState.error() = GithubTrendError;
}
