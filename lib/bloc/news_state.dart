import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/models/news.dart';

@immutable
abstract class NewsState extends Equatable {
  NewsState([List props = const []]) : super(props);
}

class NewsEmpty extends NewsState {}

class NewsLoading extends NewsState {}

class NewsLoaded extends NewsState {
  NewsLoaded({@required this.news})
      : assert(news != null),
        super([news]);

  final News news;
}

class NewsError extends NewsState {}
