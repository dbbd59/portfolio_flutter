part of 'github_trend_bloc.dart';

@freezed
abstract class GithubTrendEvent with _$GithubTrendEvent {
  const factory GithubTrendEvent.fetchTrends() = GithubTrendEventFetchTrends;
  const factory GithubTrendEvent.reset() = GithubTrendEventReset;
}
