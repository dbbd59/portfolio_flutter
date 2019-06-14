import 'package:mobx/mobx.dart';
import 'package:portfolio/Apis/Api.dart';
import 'package:portfolio/models/github_trend.dart';

part 'github_trend_store.g.dart';

class GitHubTrendStore = _GitHubTrendStore with _$GitHubTrendStore;

abstract class _GitHubTrendStore with Store {
  final Api _api;

  _GitHubTrendStore({Api api}) : _api = api;
  @observable
  List<GitHubTrend> listGitHubTrends;

  @action
  Future<void> fetchGitHubTrends() async {
    print("GHTRENDSMOBX");
    listGitHubTrends = await _api.fetchGitHubTrends();
  }
}
