import 'dart:async';
import 'package:baseapp/models/news.dart';
import 'package:baseapp/services/api_service.dart';
import 'package:baseapp/shared/injection_container.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    if (event is FetchNews) {
      yield NewsLoading();
      try {
        final News news = await getIt<ApiService>().fetchNews();
        yield NewsLoaded(news: news);
      } catch (_) {
        yield NewsError();
      }
    }
  }

  @override
  NewsState get initialState => NewsEmpty();
}
