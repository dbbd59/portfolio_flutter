import 'package:mobx/mobx.dart';
import 'package:portfolio/Apis/Api.dart';
import 'package:portfolio/models/github_trend.dart';

part 'github_trend_store.g.dart';

class GitHubTrendStore = _GitHubTrendStore with _$GitHubTrendStore;

abstract class _GitHubTrendStore with Store {
  @observable
  List<GitHubTrend> listGitHubTrends;

  @action
  Future<void> fetchGitHubTrends() async {
    print("GHTRENDSMOBX");
    listGitHubTrends = await Api.fetchGitHubTrends();
  }
}
