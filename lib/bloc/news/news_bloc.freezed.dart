// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

// ignore: unused_element
  FetchNews fetchNews() {
    return const FetchNews();
  }

// ignore: unused_element
  FetchReset reset() {
    return const FetchReset();
  }
}

/// @nodoc
// ignore: unused_element
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchNews(),
    @required Result reset(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchNews(),
    Result reset(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchNews(FetchNews value),
    @required Result reset(FetchReset value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchNews(FetchNews value),
    Result reset(FetchReset value),
    @required Result orElse(),
  });
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
  Result when<Result extends Object>({
    @required Result fetchNews(),
    @required Result reset(),
  }) {
    assert(fetchNews != null);
    assert(reset != null);
    return fetchNews();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchNews(),
    Result reset(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchNews != null) {
      return fetchNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchNews(FetchNews value),
    @required Result reset(FetchReset value),
  }) {
    assert(fetchNews != null);
    assert(reset != null);
    return fetchNews(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchNews(FetchNews value),
    Result reset(FetchReset value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
  Result when<Result extends Object>({
    @required Result fetchNews(),
    @required Result reset(),
  }) {
    assert(fetchNews != null);
    assert(reset != null);
    return reset();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchNews(),
    Result reset(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchNews(FetchNews value),
    @required Result reset(FetchReset value),
  }) {
    assert(fetchNews != null);
    assert(reset != null);
    return reset(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchNews(FetchNews value),
    Result reset(FetchReset value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

// ignore: unused_element
  NewsEmpty empty() {
    return const NewsEmpty();
  }

// ignore: unused_element
  NewsLoaded loaded(News news) {
    return NewsLoaded(
      news,
    );
  }

// ignore: unused_element
  NewsLoading loading() {
    return const NewsLoading();
  }

// ignore: unused_element
  NewsError error() {
    return const NewsError();
  }
}

/// @nodoc
// ignore: unused_element
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(News news),
    @required Result loading(),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loaded(News news),
    Result loading(),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(NewsEmpty value),
    @required Result loaded(NewsLoaded value),
    @required Result loading(NewsLoading value),
    @required Result error(NewsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(NewsEmpty value),
    Result loaded(NewsLoaded value),
    Result loading(NewsLoading value),
    Result error(NewsError value),
    @required Result orElse(),
  });
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
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(News news),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(empty != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loaded(News news),
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(NewsEmpty value),
    @required Result loaded(NewsLoaded value),
    @required Result loading(NewsLoading value),
    @required Result error(NewsError value),
  }) {
    assert(empty != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(NewsEmpty value),
    Result loaded(NewsLoaded value),
    Result loading(NewsLoading value),
    Result error(NewsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
  $Res call({News news});
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
    Object news = freezed,
  }) {
    return _then(NewsLoaded(
      news == freezed ? _value.news : news as News,
    ));
  }
}

/// @nodoc
class _$NewsLoaded implements NewsLoaded {
  const _$NewsLoaded(this.news) : assert(news != null);

  @override
  final News news;

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

  @override
  $NewsLoadedCopyWith<NewsLoaded> get copyWith =>
      _$NewsLoadedCopyWithImpl<NewsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(News news),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(empty != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(news);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loaded(News news),
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(news);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(NewsEmpty value),
    @required Result loaded(NewsLoaded value),
    @required Result loading(NewsLoading value),
    @required Result error(NewsError value),
  }) {
    assert(empty != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(NewsEmpty value),
    Result loaded(NewsLoaded value),
    Result loading(NewsLoading value),
    Result error(NewsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NewsLoaded implements NewsState {
  const factory NewsLoaded(News news) = _$NewsLoaded;

  News get news;
  $NewsLoadedCopyWith<NewsLoaded> get copyWith;
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
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(News news),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(empty != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loaded(News news),
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(NewsEmpty value),
    @required Result loaded(NewsLoaded value),
    @required Result loading(NewsLoading value),
    @required Result error(NewsError value),
  }) {
    assert(empty != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(NewsEmpty value),
    Result loaded(NewsLoaded value),
    Result loading(NewsLoading value),
    Result error(NewsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(News news),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(empty != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loaded(News news),
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(NewsEmpty value),
    @required Result loaded(NewsLoaded value),
    @required Result loading(NewsLoading value),
    @required Result error(NewsError value),
  }) {
    assert(empty != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(NewsEmpty value),
    Result loaded(NewsLoaded value),
    Result loading(NewsLoading value),
    Result error(NewsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NewsError implements NewsState {
  const factory NewsError() = _$NewsError;
}
