import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class GithubTrendEvent extends Equatable {
 const GithubTrendEvent();
}

class FetchGitHubTrends extends GithubTrendEvent {
  @override
  List<Object> get props => null;
}
