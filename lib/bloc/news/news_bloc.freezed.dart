// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

  FetchNews fetchNews() {
    return const FetchNews();
  }

  FetchReset reset() {
    return const FetchReset();
  }
}

/// @nodoc
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNews value) fetchNews,
    required TResult Function(FetchReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNews value)? fetchNews,
    TResult Function(FetchReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

/// @nodoc
abstract class $FetchNewsCopyWith<$Res> {
  factory $FetchNewsCopyWith(FetchNews value, $Res Function(FetchNews) then) =
      _$FetchNewsCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchNewsCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $FetchNewsCopyWith<$Res> {
  _$FetchNewsCopyWithImpl(FetchNews _value, $Res Function(FetchNews) _then)
      : super(_value, (v) => _then(v as FetchNews));

  @override
  FetchNews get _value => super._value as FetchNews;
}

/// @nodoc
class _$FetchNews implements FetchNews {
  const _$FetchNews();

  @override
  String toString() {
    return 'NewsEvent.fetchNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchNews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() reset,
  }) {
    return fetchNews();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (fetchNews != null) {
      return fetchNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNews value) fetchNews,
    required TResult Function(FetchReset value) reset,
  }) {
    return fetchNews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNews value)? fetchNews,
    TResult Function(FetchReset value)? reset,
    required TResult orElse(),
  }) {
    if (fetchNews != null) {
      return fetchNews(this);
    }
    return orElse();
  }
}

abstract class FetchNews implements NewsEvent {
  const factory FetchNews() = _$FetchNews;
}

/// @nodoc
abstract class $FetchResetCopyWith<$Res> {
  factory $FetchResetCopyWith(
          FetchReset value, $Res Function(FetchReset) then) =
      _$FetchResetCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchResetCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $FetchResetCopyWith<$Res> {
  _$FetchResetCopyWithImpl(FetchReset _value, $Res Function(FetchReset) _then)
      : super(_value, (v) => _then(v as FetchReset));

  @override
  FetchReset get _value => super._value as FetchReset;
}

/// @nodoc
class _$FetchReset implements FetchReset {
  const _$FetchReset();

  @override
  String toString() {
    return 'NewsEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNews value) fetchNews,
    required TResult Function(FetchReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNews value)? fetchNews,
    TResult Function(FetchReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class FetchReset implements NewsEvent {
  const factory FetchReset() = _$FetchReset;
}

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

  NewsEmpty empty() {
    return const NewsEmpty();
  }

  NewsLoaded loaded(News? news) {
    return NewsLoaded(
      news,
    );
  }

  NewsLoading loading() {
    return const NewsLoading();
  }

  NewsError error() {
    return const NewsError();
  }
}

/// @nodoc
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(News? news) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(News? news)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsEmpty value) empty,
    required TResult Function(NewsLoaded value) loaded,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsEmpty value)? empty,
    TResult Function(NewsLoaded value)? loaded,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

/// @nodoc
abstract class $NewsEmptyCopyWith<$Res> {
  factory $NewsEmptyCopyWith(NewsEmpty value, $Res Function(NewsEmpty) then) =
      _$NewsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEmptyCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $NewsEmptyCopyWith<$Res> {
  _$NewsEmptyCopyWithImpl(NewsEmpty _value, $Res Function(NewsEmpty) _then)
      : super(_value, (v) => _then(v as NewsEmpty));

  @override
  NewsEmpty get _value => super._value as NewsEmpty;
}

/// @nodoc
class _$NewsEmpty implements NewsEmpty {
  const _$NewsEmpty();

  @override
  String toString() {
    return 'NewsState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NewsEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(News? news) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(News? news)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsEmpty value) empty,
    required TResult Function(NewsLoaded value) loaded,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsEmpty value)? empty,
    TResult Function(NewsLoaded value)? loaded,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class NewsEmpty implements NewsState {
  const factory NewsEmpty() = _$NewsEmpty;
}

/// @nodoc
abstract class $NewsLoadedCopyWith<$Res> {
  factory $NewsLoadedCopyWith(
          NewsLoaded value, $Res Function(NewsLoaded) then) =
      _$NewsLoadedCopyWithImpl<$Res>;
  $Res call({News? news});
}

/// @nodoc
class _$NewsLoadedCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $NewsLoadedCopyWith<$Res> {
  _$NewsLoadedCopyWithImpl(NewsLoaded _value, $Res Function(NewsLoaded) _then)
      : super(_value, (v) => _then(v as NewsLoaded));

  @override
  NewsLoaded get _value => super._value as NewsLoaded;

  @override
  $Res call({
    Object? news = freezed,
  }) {
    return _then(NewsLoaded(
      news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as News?,
    ));
  }
}

/// @nodoc
class _$NewsLoaded implements NewsLoaded {
  const _$NewsLoaded(this.news);

  @override
  final News? news;

  @override
  String toString() {
    return 'NewsState.loaded(news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewsLoaded &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(news);

  @JsonKey(ignore: true)
  @override
  $NewsLoadedCopyWith<NewsLoaded> get copyWith =>
      _$NewsLoadedCopyWithImpl<NewsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(News? news) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loaded(news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(News? news)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(news);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsEmpty value) empty,
    required TResult Function(NewsLoaded value) loaded,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsEmpty value)? empty,
    TResult Function(NewsLoaded value)? loaded,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NewsLoaded implements NewsState {
  const factory NewsLoaded(News? news) = _$NewsLoaded;

  News? get news => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsLoadedCopyWith<NewsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsLoadingCopyWith<$Res> {
  factory $NewsLoadingCopyWith(
          NewsLoading value, $Res Function(NewsLoading) then) =
      _$NewsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsLoadingCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $NewsLoadingCopyWith<$Res> {
  _$NewsLoadingCopyWithImpl(
      NewsLoading _value, $Res Function(NewsLoading) _then)
      : super(_value, (v) => _then(v as NewsLoading));

  @override
  NewsLoading get _value => super._value as NewsLoading;
}

/// @nodoc
class _$NewsLoading implements NewsLoading {
  const _$NewsLoading();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NewsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(News? news) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(News? news)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsEmpty value) empty,
    required TResult Function(NewsLoaded value) loaded,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsEmpty value)? empty,
    TResult Function(NewsLoaded value)? loaded,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewsLoading implements NewsState {
  const factory NewsLoading() = _$NewsLoading;
}

/// @nodoc
abstract class $NewsErrorCopyWith<$Res> {
  factory $NewsErrorCopyWith(NewsError value, $Res Function(NewsError) then) =
      _$NewsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsErrorCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $NewsErrorCopyWith<$Res> {
  _$NewsErrorCopyWithImpl(NewsError _value, $Res Function(NewsError) _then)
      : super(_value, (v) => _then(v as NewsError));

  @override
  NewsError get _value => super._value as NewsError;
}

/// @nodoc
class _$NewsError implements NewsError {
  const _$NewsError();

  @override
  String toString() {
    return 'NewsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NewsError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(News? news) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(News? news)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsEmpty value) empty,
    required TResult Function(NewsLoaded value) loaded,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsEmpty value)? empty,
    TResult Function(NewsLoaded value)? loaded,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NewsError implements NewsState {
  const factory NewsError() = _$NewsError;
}
