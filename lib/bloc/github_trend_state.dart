import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/models/github_trend.dart';

@immutable
abstract class GithubTrendState extends Equatable {
  GithubTrendState([List props = const []]) : super(props);
}

class GithubTrendEmpty extends GithubTrendState {}

class GithubTrendLoading extends GithubTrendState {}

class GithubTrendLoaded extends GithubTrendState {
  GithubTrendLoaded({@required this.listGitHubTrends})
      : assert(listGitHubTrends != null),
        super([listGitHubTrends]);

  final List<GitHubTrend> listGitHubTrends;
}

class GithubTrendError extends GithubTrendState {}
