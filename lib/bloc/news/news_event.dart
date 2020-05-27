part of 'news_bloc.dart';

@freezed
abstract class NewsEvent with _$NewsEvent {
  const factory NewsEvent.fetchNews() = FetchNews;
  const factory NewsEvent.reset() = FetchReset;
}
