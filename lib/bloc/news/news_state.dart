part of 'news_bloc.dart';

@immutable
abstract class NewsState {
  const NewsState();
}

class NewsEmpty extends NewsState {}

class NewsLoading extends NewsState {}

class NewsLoaded extends NewsState {
  NewsLoaded({@required this.news}) : assert(news != null);

  final News news;
}

class NewsError extends NewsState {}
