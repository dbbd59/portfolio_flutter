// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_trend_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$GitHubTrendStore on _GitHubTrendStore, Store {
  final _$listGitHubTrendsAtom =
      Atom(name: '_GitHubTrendStore.listGitHubTrends');

  @override
  List<GitHubTrend> get listGitHubTrends {
    _$listGitHubTrendsAtom.reportObserved();
    return super.listGitHubTrends;
  }

  @override
  set listGitHubTrends(List<GitHubTrend> value) {
    _$listGitHubTrendsAtom.context
        .checkIfStateModificationsAreAllowed(_$listGitHubTrendsAtom);
    super.listGitHubTrends = value;
    _$listGitHubTrendsAtom.reportChanged();
  }

  final _$fetchGitHubTrendsAsyncAction = AsyncAction('fetchGitHubTrends');

  @override
  Future<void> fetchGitHubTrends() {
    return _$fetchGitHubTrendsAsyncAction.run(() => super.fetchGitHubTrends());
  }
}
