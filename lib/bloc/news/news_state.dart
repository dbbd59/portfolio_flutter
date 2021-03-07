part of 'news_bloc.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState.empty() = NewsEmpty;
  const factory NewsState.loaded(News? news) = NewsLoaded;
  const factory NewsState.loading() = NewsLoading;
  const factory NewsState.error() = NewsError;
}
