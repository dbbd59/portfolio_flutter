import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/models/news.dart';

@immutable
abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

class NewsEmpty extends NewsState {}

class NewsLoading extends NewsState {}

class NewsLoaded extends NewsState {
  NewsLoaded({@required this.news}) : assert(news != null);

  final News news;
}

class NewsError extends NewsState {}
