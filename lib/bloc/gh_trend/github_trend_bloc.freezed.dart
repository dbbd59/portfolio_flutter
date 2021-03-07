// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'github_trend_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GithubTrendEventTearOff {
  const _$GithubTrendEventTearOff();

  GithubTrendEventFetchTrends fetchTrends() {
    return const GithubTrendEventFetchTrends();
  }

  GithubTrendEventReset reset() {
    return const GithubTrendEventReset();
  }
}

/// @nodoc
const $GithubTrendEvent = _$GithubTrendEventTearOff();

/// @nodoc
mixin _$GithubTrendEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTrends,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTrends,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GithubTrendEventFetchTrends value) fetchTrends,
    required TResult Function(GithubTrendEventReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubTrendEventFetchTrends value)? fetchTrends,
    TResult Function(GithubTrendEventReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubTrendEventCopyWith<$Res> {
  factory $GithubTrendEventCopyWith(
          GithubTrendEvent value, $Res Function(GithubTrendEvent) then) =
      _$GithubTrendEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GithubTrendEventCopyWithImpl<$Res>
    implements $GithubTrendEventCopyWith<$Res> {
  _$GithubTrendEventCopyWithImpl(this._value, this._then);

  final GithubTrendEvent _value;
  // ignore: unused_field
  final $Res Function(GithubTrendEvent) _then;
}

/// @nodoc
abstract class $GithubTrendEventFetchTrendsCopyWith<$Res> {
  factory $GithubTrendEventFetchTrendsCopyWith(
          GithubTrendEventFetchTrends value,
          $Res Function(GithubTrendEventFetchTrends) then) =
      _$GithubTrendEventFetchTrendsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GithubTrendEventFetchTrendsCopyWithImpl<$Res>
    extends _$GithubTrendEventCopyWithImpl<$Res>
    implements $GithubTrendEventFetchTrendsCopyWith<$Res> {
  _$GithubTrendEventFetchTrendsCopyWithImpl(GithubTrendEventFetchTrends _value,
      $Res Function(GithubTrendEventFetchTrends) _then)
      : super(_value, (v) => _then(v as GithubTrendEventFetchTrends));

  @override
  GithubTrendEventFetchTrends get _value =>
      super._value as GithubTrendEventFetchTrends;
}

/// @nodoc
class _$GithubTrendEventFetchTrends
    with DiagnosticableTreeMixin
    implements GithubTrendEventFetchTrends {
  const _$GithubTrendEventFetchTrends();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubTrendEvent.fetchTrends()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GithubTrendEvent.fetchTrends'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GithubTrendEventFetchTrends);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTrends,
    required TResult Function() reset,
  }) {
    return fetchTrends();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTrends,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (fetchTrends != null) {
      return fetchTrends();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GithubTrendEventFetchTrends value) fetchTrends,
    required TResult Function(GithubTrendEventReset value) reset,
  }) {
    return fetchTrends(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubTrendEventFetchTrends value)? fetchTrends,
    TResult Function(GithubTrendEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (fetchTrends != null) {
      return fetchTrends(this);
    }
    return orElse();
  }
}

abstract class GithubTrendEventFetchTrends implements GithubTrendEvent {
  const factory GithubTrendEventFetchTrends() = _$GithubTrendEventFetchTrends;
}

/// @nodoc
abstract class $GithubTrendEventResetCopyWith<$Res> {
  factory $GithubTrendEventResetCopyWith(GithubTrendEventReset value,
          $Res Function(GithubTrendEventReset) then) =
      _$GithubTrendEventResetCopyWithImpl<$Res>;
}

/// @nodoc
class _$GithubTrendEventResetCopyWithImpl<$Res>
    extends _$GithubTrendEventCopyWithImpl<$Res>
    implements $GithubTrendEventResetCopyWith<$Res> {
  _$GithubTrendEventResetCopyWithImpl(
      GithubTrendEventReset _value, $Res Function(GithubTrendEventReset) _then)
      : super(_value, (v) => _then(v as GithubTrendEventReset));

  @override
  GithubTrendEventReset get _value => super._value as GithubTrendEventReset;
}

/// @nodoc
class _$GithubTrendEventReset
    with DiagnosticableTreeMixin
    implements GithubTrendEventReset {
  const _$GithubTrendEventReset();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubTrendEvent.reset()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GithubTrendEvent.reset'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GithubTrendEventReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTrends,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTrends,
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
    required TResult Function(GithubTrendEventFetchTrends value) fetchTrends,
    required TResult Function(GithubTrendEventReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubTrendEventFetchTrends value)? fetchTrends,
    TResult Function(GithubTrendEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class GithubTrendEventReset implements GithubTrendEvent {
  const factory GithubTrendEventReset() = _$GithubTrendEventReset;
}

/// @nodoc
class _$GithubTrendStateTearOff {
  const _$GithubTrendStateTearOff();

  GithubTrendEmpty empty() {
    return const GithubTrendEmpty();
  }

  GithubTrendLoaded loaded(List<GitHubTrend>? gitHubTrends) {
    return GithubTrendLoaded(
      gitHubTrends,
    );
  }

  GithubTrendLoading loading() {
    return const GithubTrendLoading();
  }

  GithubTrendError error() {
    return const GithubTrendError();
  }
}

/// @nodoc
const $GithubTrendState = _$GithubTrendStateTearOff();

/// @nodoc
mixin _$GithubTrendState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<GitHubTrend>? gitHubTrends) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<GitHubTrend>? gitHubTrends)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GithubTrendEmpty value) empty,
    required TResult Function(GithubTrendLoaded value) loaded,
    required TResult Function(GithubTrendLoading value) loading,
    required TResult Function(GithubTrendError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubTrendEmpty value)? empty,
    TResult Function(GithubTrendLoaded value)? loaded,
    TResult Function(GithubTrendLoading value)? loading,
    TResult Function(GithubTrendError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubTrendStateCopyWith<$Res> {
  factory $GithubTrendStateCopyWith(
          GithubTrendState value, $Res Function(GithubTrendState) then) =
      _$GithubTrendStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GithubTrendStateCopyWithImpl<$Res>
    implements $GithubTrendStateCopyWith<$Res> {
  _$GithubTrendStateCopyWithImpl(this._value, this._then);

  final GithubTrendState _value;
  // ignore: unused_field
  final $Res Function(GithubTrendState) _then;
}

/// @nodoc
abstract class $GithubTrendEmptyCopyWith<$Res> {
  factory $GithubTrendEmptyCopyWith(
          GithubTrendEmpty value, $Res Function(GithubTrendEmpty) then) =
      _$GithubTrendEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$GithubTrendEmptyCopyWithImpl<$Res>
    extends _$GithubTrendStateCopyWithImpl<$Res>
    implements $GithubTrendEmptyCopyWith<$Res> {
  _$GithubTrendEmptyCopyWithImpl(
      GithubTrendEmpty _value, $Res Function(GithubTrendEmpty) _then)
      : super(_value, (v) => _then(v as GithubTrendEmpty));

  @override
  GithubTrendEmpty get _value => super._value as GithubTrendEmpty;
}

/// @nodoc
class _$GithubTrendEmpty
    with DiagnosticableTreeMixin
    implements GithubTrendEmpty {
  const _$GithubTrendEmpty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubTrendState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GithubTrendState.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GithubTrendEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<GitHubTrend>? gitHubTrends) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<GitHubTrend>? gitHubTrends)? loaded,
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
    required TResult Function(GithubTrendEmpty value) empty,
    required TResult Function(GithubTrendLoaded value) loaded,
    required TResult Function(GithubTrendLoading value) loading,
    required TResult Function(GithubTrendError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubTrendEmpty value)? empty,
    TResult Function(GithubTrendLoaded value)? loaded,
    TResult Function(GithubTrendLoading value)? loading,
    TResult Function(GithubTrendError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class GithubTrendEmpty implements GithubTrendState {
  const factory GithubTrendEmpty() = _$GithubTrendEmpty;
}

/// @nodoc
abstract class $GithubTrendLoadedCopyWith<$Res> {
  factory $GithubTrendLoadedCopyWith(
          GithubTrendLoaded value, $Res Function(GithubTrendLoaded) then) =
      _$GithubTrendLoadedCopyWithImpl<$Res>;
  $Res call({List<GitHubTrend>? gitHubTrends});
}

/// @nodoc
class _$GithubTrendLoadedCopyWithImpl<$Res>
    extends _$GithubTrendStateCopyWithImpl<$Res>
    implements $GithubTrendLoadedCopyWith<$Res> {
  _$GithubTrendLoadedCopyWithImpl(
      GithubTrendLoaded _value, $Res Function(GithubTrendLoaded) _then)
      : super(_value, (v) => _then(v as GithubTrendLoaded));

  @override
  GithubTrendLoaded get _value => super._value as GithubTrendLoaded;

  @override
  $Res call({
    Object? gitHubTrends = freezed,
  }) {
    return _then(GithubTrendLoaded(
      gitHubTrends == freezed
          ? _value.gitHubTrends
          : gitHubTrends // ignore: cast_nullable_to_non_nullable
              as List<GitHubTrend>?,
    ));
  }
}

/// @nodoc
class _$GithubTrendLoaded
    with DiagnosticableTreeMixin
    implements GithubTrendLoaded {
  const _$GithubTrendLoaded(this.gitHubTrends);

  @override
  final List<GitHubTrend>? gitHubTrends;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubTrendState.loaded(gitHubTrends: $gitHubTrends)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GithubTrendState.loaded'))
      ..add(DiagnosticsProperty('gitHubTrends', gitHubTrends));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GithubTrendLoaded &&
            (identical(other.gitHubTrends, gitHubTrends) ||
                const DeepCollectionEquality()
                    .equals(other.gitHubTrends, gitHubTrends)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gitHubTrends);

  @JsonKey(ignore: true)
  @override
  $GithubTrendLoadedCopyWith<GithubTrendLoaded> get copyWith =>
      _$GithubTrendLoadedCopyWithImpl<GithubTrendLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<GitHubTrend>? gitHubTrends) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loaded(gitHubTrends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<GitHubTrend>? gitHubTrends)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(gitHubTrends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GithubTrendEmpty value) empty,
    required TResult Function(GithubTrendLoaded value) loaded,
    required TResult Function(GithubTrendLoading value) loading,
    required TResult Function(GithubTrendError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubTrendEmpty value)? empty,
    TResult Function(GithubTrendLoaded value)? loaded,
    TResult Function(GithubTrendLoading value)? loading,
    TResult Function(GithubTrendError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GithubTrendLoaded implements GithubTrendState {
  const factory GithubTrendLoaded(List<GitHubTrend>? gitHubTrends) =
      _$GithubTrendLoaded;

  List<GitHubTrend>? get gitHubTrends => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubTrendLoadedCopyWith<GithubTrendLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubTrendLoadingCopyWith<$Res> {
  factory $GithubTrendLoadingCopyWith(
          GithubTrendLoading value, $Res Function(GithubTrendLoading) then) =
      _$GithubTrendLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GithubTrendLoadingCopyWithImpl<$Res>
    extends _$GithubTrendStateCopyWithImpl<$Res>
    implements $GithubTrendLoadingCopyWith<$Res> {
  _$GithubTrendLoadingCopyWithImpl(
      GithubTrendLoading _value, $Res Function(GithubTrendLoading) _then)
      : super(_value, (v) => _then(v as GithubTrendLoading));

  @override
  GithubTrendLoading get _value => super._value as GithubTrendLoading;
}

/// @nodoc
class _$GithubTrendLoading
    with DiagnosticableTreeMixin
    implements GithubTrendLoading {
  const _$GithubTrendLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubTrendState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GithubTrendState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GithubTrendLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<GitHubTrend>? gitHubTrends) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<GitHubTrend>? gitHubTrends)? loaded,
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
    required TResult Function(GithubTrendEmpty value) empty,
    required TResult Function(GithubTrendLoaded value) loaded,
    required TResult Function(GithubTrendLoading value) loading,
    required TResult Function(GithubTrendError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubTrendEmpty value)? empty,
    TResult Function(GithubTrendLoaded value)? loaded,
    TResult Function(GithubTrendLoading value)? loading,
    TResult Function(GithubTrendError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GithubTrendLoading implements GithubTrendState {
  const factory GithubTrendLoading() = _$GithubTrendLoading;
}

/// @nodoc
abstract class $GithubTrendErrorCopyWith<$Res> {
  factory $GithubTrendErrorCopyWith(
          GithubTrendError value, $Res Function(GithubTrendError) then) =
      _$GithubTrendErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$GithubTrendErrorCopyWithImpl<$Res>
    extends _$GithubTrendStateCopyWithImpl<$Res>
    implements $GithubTrendErrorCopyWith<$Res> {
  _$GithubTrendErrorCopyWithImpl(
      GithubTrendError _value, $Res Function(GithubTrendError) _then)
      : super(_value, (v) => _then(v as GithubTrendError));

  @override
  GithubTrendError get _value => super._value as GithubTrendError;
}

/// @nodoc
class _$GithubTrendError
    with DiagnosticableTreeMixin
    implements GithubTrendError {
  const _$GithubTrendError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GithubTrendState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GithubTrendState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GithubTrendError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<GitHubTrend>? gitHubTrends) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<GitHubTrend>? gitHubTrends)? loaded,
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
    required TResult Function(GithubTrendEmpty value) empty,
    required TResult Function(GithubTrendLoaded value) loaded,
    required TResult Function(GithubTrendLoading value) loading,
    required TResult Function(GithubTrendError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GithubTrendEmpty value)? empty,
    TResult Function(GithubTrendLoaded value)? loaded,
    TResult Function(GithubTrendLoading value)? loading,
    TResult Function(GithubTrendError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GithubTrendError implements GithubTrendState {
  const factory GithubTrendError() = _$GithubTrendError;
}
