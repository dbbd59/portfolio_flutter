import 'package:mobx/mobx.dart';
import 'package:portfolio/Apis/api.dart';
import 'package:portfolio/models/news.dart';

part 'news_store.g.dart';

class NewsStore = _NewsStore with _$NewsStore;

abstract class _NewsStore with Store {
  final Api _api;

  _NewsStore({Api api}) : _api = api;
  @observable
  News news;

  @action
  Future<void> fetchNews() async {
    print("NEWSMOBX");
    news = await _api.fetchNews();
  }
}
