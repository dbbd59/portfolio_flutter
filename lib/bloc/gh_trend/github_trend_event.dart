part of 'github_trend_bloc.dart';

@immutable
abstract class GithubTrendEvent  {
 const GithubTrendEvent();
}

class FetchGitHubTrends extends GithubTrendEvent {
}
