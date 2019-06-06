import 'package:mobx/mobx.dart';
import 'package:portfolio/Apis/Api.dart';
import 'package:portfolio/models/news.dart';

part 'news_store.g.dart';

class NewsStore = _NewsStore with _$NewsStore;

abstract class _NewsStore with Store {
  @observable
  News news;

  @action
  Future<void> fetchNews() async {
    print("NEWSMOBX");
    news = await Api.fetchNews();
  }
}
