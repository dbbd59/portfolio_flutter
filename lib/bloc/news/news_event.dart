
part of 'news_bloc.dart';


@immutable
abstract class NewsEvent {
  const NewsEvent();
}

class FetchNews extends NewsEvent {}
