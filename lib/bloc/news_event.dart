import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class NewsEvent extends Equatable {
  NewsEvent([List props = const []]) : super(props);
}

class FetchNews extends NewsEvent {}
