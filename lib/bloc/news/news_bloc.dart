// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/services/api_service.dart';
import 'package:portfolio_flutter/model/news.dart';

// 🌎 Project imports:

part 'news_event.dart';
part 'news_state.dart';

@Injectable()
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this._apiService);

  ApiService _apiService;

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    if (event is FetchNews) {
      yield NewsLoading();
      try {
        final News news = await _apiService.fetchNews();
        yield NewsLoaded(news: news);
      } catch (_) {
        yield NewsError();
      }
    }
  }

  @override
  NewsState get initialState => NewsEmpty();
}
