import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/models/github_trend.dart';

@immutable
abstract class GithubTrendState extends Equatable {
  const GithubTrendState();
}

class GithubTrendEmpty extends GithubTrendState {
  @override
  List<Object> get props => null;
}

class GithubTrendLoading extends GithubTrendState {
  @override
  List<Object> get props => null;
}

class GithubTrendLoaded extends GithubTrendState {
  GithubTrendLoaded({@required this.listGitHubTrends})
      : assert(listGitHubTrends != null);

  final List<GitHubTrend> listGitHubTrends;
  @override
  List<Object> get props => listGitHubTrends;
}

class GithubTrendError extends GithubTrendState {
  @override
  List<Object> get props => null;
}
