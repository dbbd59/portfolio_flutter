// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/services/api_service.dart';
import 'package:portfolio_flutter/model/news.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@Injectable()
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this._apiService);

  ApiService _apiService;

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    yield* event.map(
      fetchNews: (e) async* {
        try {
          yield NewsState.loading();
          final News news = await _apiService.fetchNews();
          yield NewsState.loaded(news);
        } catch (_) {
          yield NewsState.error();
        }
      },
      reset: (e) async* {},
    );
  }

  @override
  NewsState get initialState => NewsState.empty();
}
