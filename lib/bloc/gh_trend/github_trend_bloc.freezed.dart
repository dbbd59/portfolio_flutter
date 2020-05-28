// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'github_trend_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GithubTrendEventTearOff {
  const _$GithubTrendEventTearOff();

  GithubTrendEventFetchTrends fetchTrends() {
    return const GithubTrendEventFetchTrends();
  }

  GithubTrendEventReset reset() {
    return const GithubTrendEventReset();
  }
}

// ignore: unused_element
const $GithubTrendEvent = _$GithubTrendEventTearOff();

mixin _$GithubTrendEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchTrends(),
    @required Result reset(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchTrends(),
    Result reset(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchTrends(GithubTrendEventFetchTrends value),
    @required Result reset(GithubTrendEventReset value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchTrends(GithubTrendEventFetchTrends value),
    Result reset(GithubTrendEventReset value),
    @required Result orElse(),
  });
}

abstract class $GithubTrendEventCopyWith<$Res> {
  factory $GithubTrendEventCopyWith(
          GithubTrendEvent value, $Res Function(GithubTrendEvent) then) =
      _$GithubTrendEventCopyWithImpl<$Res>;
}

class _$GithubTrendEventCopyWithImpl<$Res>
    implements $GithubTrendEventCopyWith<$Res> {
  _$GithubTrendEventCopyWithImpl(this._value, this._then);

  final GithubTrendEvent _value;
  // ignore: unused_field
  final $Res Function(GithubTrendEvent) _then;
}

abstract class $GithubTrendEventFetchTrendsCopyWith<$Res> {
  factory $GithubTrendEventFetchTrendsCopyWith(
          GithubTrendEventFetchTrends value,
          $Res Function(GithubTrendEventFetchTrends) then) =
      _$GithubTrendEventFetchTrendsCopyWithImpl<$Res>;
}

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
  Result when<Result extends Object>({
    @required Result fetchTrends(),
    @required Result reset(),
  }) {
    assert(fetchTrends != null);
    assert(reset != null);
    return fetchTrends();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchTrends(),
    Result reset(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchTrends != null) {
      return fetchTrends();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchTrends(GithubTrendEventFetchTrends value),
    @required Result reset(GithubTrendEventReset value),
  }) {
    assert(fetchTrends != null);
    assert(reset != null);
    return fetchTrends(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchTrends(GithubTrendEventFetchTrends value),
    Result reset(GithubTrendEventReset value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchTrends != null) {
      return fetchTrends(this);
    }
    return orElse();
  }
}

abstract class GithubTrendEventFetchTrends implements GithubTrendEvent {
  const factory GithubTrendEventFetchTrends() = _$GithubTrendEventFetchTrends;
}

abstract class $GithubTrendEventResetCopyWith<$Res> {
  factory $GithubTrendEventResetCopyWith(GithubTrendEventReset value,
          $Res Function(GithubTrendEventReset) then) =
      _$GithubTrendEventResetCopyWithImpl<$Res>;
}

class _$GithubTrendEventResetCopyWithImpl<$Res>
    extends _$GithubTrendEventCopyWithImpl<$Res>
    implements $GithubTrendEventResetCopyWith<$Res> {
  _$GithubTrendEventResetCopyWithImpl(
      GithubTrendEventReset _value, $Res Function(GithubTrendEventReset) _then)
      : super(_value, (v) => _then(v as GithubTrendEventReset));

  @override
  GithubTrendEventReset get _value => super._value as GithubTrendEventReset;
}

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
  Result when<Result extends Object>({
    @required Result fetchTrends(),
    @required Result reset(),
  }) {
    assert(fetchTrends != null);
    assert(reset != null);
    return reset();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchTrends(),
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
    @required Result fetchTrends(GithubTrendEventFetchTrends value),
    @required Result reset(GithubTrendEventReset value),
  }) {
    assert(fetchTrends != null);
    assert(reset != null);
    return reset(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchTrends(GithubTrendEventFetchTrends value),
    Result reset(GithubTrendEventReset value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class GithubTrendEventReset implements GithubTrendEvent {
  const factory GithubTrendEventReset() = _$GithubTrendEventReset;
}

class _$GithubTrendStateTearOff {
  const _$GithubTrendStateTearOff();

  GithubTrendEmpty empty() {
    return const GithubTrendEmpty();
  }

  GithubTrendLoaded loaded(List<GitHubTrend> gitHubTrends) {
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

// ignore: unused_element
const $GithubTrendState = _$GithubTrendStateTearOff();

mixin _$GithubTrendState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(List<GitHubTrend> gitHubTrends),
    @required Result loading(),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loaded(List<GitHubTrend> gitHubTrends),
    Result loading(),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(GithubTrendEmpty value),
    @required Result loaded(GithubTrendLoaded value),
    @required Result loading(GithubTrendLoading value),
    @required Result error(GithubTrendError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(GithubTrendEmpty value),
    Result loaded(GithubTrendLoaded value),
    Result loading(GithubTrendLoading value),
    Result error(GithubTrendError value),
    @required Result orElse(),
  });
}

abstract class $GithubTrendStateCopyWith<$Res> {
  factory $GithubTrendStateCopyWith(
          GithubTrendState value, $Res Function(GithubTrendState) then) =
      _$GithubTrendStateCopyWithImpl<$Res>;
}

class _$GithubTrendStateCopyWithImpl<$Res>
    implements $GithubTrendStateCopyWith<$Res> {
  _$GithubTrendStateCopyWithImpl(this._value, this._then);

  final GithubTrendState _value;
  // ignore: unused_field
  final $Res Function(GithubTrendState) _then;
}

abstract class $GithubTrendEmptyCopyWith<$Res> {
  factory $GithubTrendEmptyCopyWith(
          GithubTrendEmpty value, $Res Function(GithubTrendEmpty) then) =
      _$GithubTrendEmptyCopyWithImpl<$Res>;
}

class _$GithubTrendEmptyCopyWithImpl<$Res>
    extends _$GithubTrendStateCopyWithImpl<$Res>
    implements $GithubTrendEmptyCopyWith<$Res> {
  _$GithubTrendEmptyCopyWithImpl(
      GithubTrendEmpty _value, $Res Function(GithubTrendEmpty) _then)
      : super(_value, (v) => _then(v as GithubTrendEmpty));

  @override
  GithubTrendEmpty get _value => super._value as GithubTrendEmpty;
}

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
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(List<GitHubTrend> gitHubTrends),
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
    Result loaded(List<GitHubTrend> gitHubTrends),
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
    @required Result empty(GithubTrendEmpty value),
    @required Result loaded(GithubTrendLoaded value),
    @required Result loading(GithubTrendLoading value),
    @required Result error(GithubTrendError value),
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
    Result empty(GithubTrendEmpty value),
    Result loaded(GithubTrendLoaded value),
    Result loading(GithubTrendLoading value),
    Result error(GithubTrendError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class GithubTrendEmpty implements GithubTrendState {
  const factory GithubTrendEmpty() = _$GithubTrendEmpty;
}

abstract class $GithubTrendLoadedCopyWith<$Res> {
  factory $GithubTrendLoadedCopyWith(
          GithubTrendLoaded value, $Res Function(GithubTrendLoaded) then) =
      _$GithubTrendLoadedCopyWithImpl<$Res>;
  $Res call({List<GitHubTrend> gitHubTrends});
}

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
    Object gitHubTrends = freezed,
  }) {
    return _then(GithubTrendLoaded(
      gitHubTrends == freezed
          ? _value.gitHubTrends
          : gitHubTrends as List<GitHubTrend>,
    ));
  }
}

class _$GithubTrendLoaded
    with DiagnosticableTreeMixin
    implements GithubTrendLoaded {
  const _$GithubTrendLoaded(this.gitHubTrends) : assert(gitHubTrends != null);

  @override
  final List<GitHubTrend> gitHubTrends;

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

  @override
  $GithubTrendLoadedCopyWith<GithubTrendLoaded> get copyWith =>
      _$GithubTrendLoadedCopyWithImpl<GithubTrendLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(List<GitHubTrend> gitHubTrends),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(empty != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(gitHubTrends);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loaded(List<GitHubTrend> gitHubTrends),
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(gitHubTrends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(GithubTrendEmpty value),
    @required Result loaded(GithubTrendLoaded value),
    @required Result loading(GithubTrendLoading value),
    @required Result error(GithubTrendError value),
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
    Result empty(GithubTrendEmpty value),
    Result loaded(GithubTrendLoaded value),
    Result loading(GithubTrendLoading value),
    Result error(GithubTrendError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GithubTrendLoaded implements GithubTrendState {
  const factory GithubTrendLoaded(List<GitHubTrend> gitHubTrends) =
      _$GithubTrendLoaded;

  List<GitHubTrend> get gitHubTrends;
  $GithubTrendLoadedCopyWith<GithubTrendLoaded> get copyWith;
}

abstract class $GithubTrendLoadingCopyWith<$Res> {
  factory $GithubTrendLoadingCopyWith(
          GithubTrendLoading value, $Res Function(GithubTrendLoading) then) =
      _$GithubTrendLoadingCopyWithImpl<$Res>;
}

class _$GithubTrendLoadingCopyWithImpl<$Res>
    extends _$GithubTrendStateCopyWithImpl<$Res>
    implements $GithubTrendLoadingCopyWith<$Res> {
  _$GithubTrendLoadingCopyWithImpl(
      GithubTrendLoading _value, $Res Function(GithubTrendLoading) _then)
      : super(_value, (v) => _then(v as GithubTrendLoading));

  @override
  GithubTrendLoading get _value => super._value as GithubTrendLoading;
}

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
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(List<GitHubTrend> gitHubTrends),
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
    Result loaded(List<GitHubTrend> gitHubTrends),
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
    @required Result empty(GithubTrendEmpty value),
    @required Result loaded(GithubTrendLoaded value),
    @required Result loading(GithubTrendLoading value),
    @required Result error(GithubTrendError value),
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
    Result empty(GithubTrendEmpty value),
    Result loaded(GithubTrendLoaded value),
    Result loading(GithubTrendLoading value),
    Result error(GithubTrendError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GithubTrendLoading implements GithubTrendState {
  const factory GithubTrendLoading() = _$GithubTrendLoading;
}

abstract class $GithubTrendErrorCopyWith<$Res> {
  factory $GithubTrendErrorCopyWith(
          GithubTrendError value, $Res Function(GithubTrendError) then) =
      _$GithubTrendErrorCopyWithImpl<$Res>;
}

class _$GithubTrendErrorCopyWithImpl<$Res>
    extends _$GithubTrendStateCopyWithImpl<$Res>
    implements $GithubTrendErrorCopyWith<$Res> {
  _$GithubTrendErrorCopyWithImpl(
      GithubTrendError _value, $Res Function(GithubTrendError) _then)
      : super(_value, (v) => _then(v as GithubTrendError));

  @override
  GithubTrendError get _value => super._value as GithubTrendError;
}

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
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(List<GitHubTrend> gitHubTrends),
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
    Result loaded(List<GitHubTrend> gitHubTrends),
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
    @required Result empty(GithubTrendEmpty value),
    @required Result loaded(GithubTrendLoaded value),
    @required Result loading(GithubTrendLoading value),
    @required Result error(GithubTrendError value),
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
    Result empty(GithubTrendEmpty value),
    Result loaded(GithubTrendLoaded value),
    Result loading(GithubTrendLoading value),
    Result error(GithubTrendError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GithubTrendError implements GithubTrendState {
  const factory GithubTrendError() = _$GithubTrendError;
}
