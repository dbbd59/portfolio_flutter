import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:portfolio/Apis/api.dart';
import 'package:portfolio/models/news.dart';
import './bloc.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc({Api api}) : _api = api;

  final Api _api;

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    if (event is FetchNews) {
      yield NewsLoading();
      try {
        final News news = await _api.fetchNews();
        yield NewsLoaded(news: news);
      } catch (_) {
        yield NewsError();
      }
    }
  }

  @override
  NewsState get initialState => NewsEmpty();
}
