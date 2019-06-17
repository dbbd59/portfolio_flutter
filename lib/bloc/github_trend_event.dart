import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class GithubTrendEvent extends Equatable {
  GithubTrendEvent([List props = const []]) : super(props);
}

class FetchGitHubTrends extends GithubTrendEvent {}
