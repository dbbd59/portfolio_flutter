part of 'github_trend_bloc.dart';

@immutable
abstract class GithubTrendState {
  const GithubTrendState();
}

class GithubTrendEmpty extends GithubTrendState {}

class GithubTrendLoading extends GithubTrendState {}

class GithubTrendLoaded extends GithubTrendState {
  GithubTrendLoaded({@required this.listGitHubTrends})
      : assert(listGitHubTrends != null);

  final List<GitHubTrend> listGitHubTrends;
}

class GithubTrendError extends GithubTrendState {}
