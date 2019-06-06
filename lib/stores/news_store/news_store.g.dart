// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$NewsStore on _NewsStore, Store {
  final _$newsAtom = Atom(name: '_NewsStore.news');

  @override
  News get news {
    _$newsAtom.reportObserved();
    return super.news;
  }

  @override
  set news(News value) {
    _$newsAtom.context.checkIfStateModificationsAreAllowed(_$newsAtom);
    super.news = value;
    _$newsAtom.reportChanged();
  }

  final _$fetchNewsAsyncAction = AsyncAction('fetchNews');

  @override
  Future<void> fetchNews() {
    return _$fetchNewsAsyncAction.run(() => super.fetchNews());
  }
}
