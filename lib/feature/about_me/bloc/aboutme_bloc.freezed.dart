// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'aboutme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AboutMeEventTearOff {
  const _$AboutMeEventTearOff();

  AboutMeEventFetch fetch() {
    return const AboutMeEventFetch();
  }

  AboutMeEventReset reset() {
    return const AboutMeEventReset();
  }
}

/// @nodoc
const $AboutMeEvent = _$AboutMeEventTearOff();

/// @nodoc
mixin _$AboutMeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AboutMeEventFetch value) fetch,
    required TResult Function(AboutMeEventReset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutMeEventFetch value)? fetch,
    TResult Function(AboutMeEventReset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutMeEventCopyWith<$Res> {
  factory $AboutMeEventCopyWith(
          AboutMeEvent value, $Res Function(AboutMeEvent) then) =
      _$AboutMeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AboutMeEventCopyWithImpl<$Res> implements $AboutMeEventCopyWith<$Res> {
  _$AboutMeEventCopyWithImpl(this._value, this._then);

  final AboutMeEvent _value;
  // ignore: unused_field
  final $Res Function(AboutMeEvent) _then;
}

/// @nodoc
abstract class $AboutMeEventFetchCopyWith<$Res> {
  factory $AboutMeEventFetchCopyWith(
          AboutMeEventFetch value, $Res Function(AboutMeEventFetch) then) =
      _$AboutMeEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$AboutMeEventFetchCopyWithImpl<$Res>
    extends _$AboutMeEventCopyWithImpl<$Res>
    implements $AboutMeEventFetchCopyWith<$Res> {
  _$AboutMeEventFetchCopyWithImpl(
      AboutMeEventFetch _value, $Res Function(AboutMeEventFetch) _then)
      : super(_value, (v) => _then(v as AboutMeEventFetch));

  @override
  AboutMeEventFetch get _value => super._value as AboutMeEventFetch;
}

/// @nodoc

class _$AboutMeEventFetch implements AboutMeEventFetch {
  const _$AboutMeEventFetch();

  @override
  String toString() {
    return 'AboutMeEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AboutMeEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reset,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AboutMeEventFetch value) fetch,
    required TResult Function(AboutMeEventReset value) reset,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutMeEventFetch value)? fetch,
    TResult Function(AboutMeEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class AboutMeEventFetch implements AboutMeEvent {
  const factory AboutMeEventFetch() = _$AboutMeEventFetch;
}

/// @nodoc
abstract class $AboutMeEventResetCopyWith<$Res> {
  factory $AboutMeEventResetCopyWith(
          AboutMeEventReset value, $Res Function(AboutMeEventReset) then) =
      _$AboutMeEventResetCopyWithImpl<$Res>;
}

/// @nodoc
class _$AboutMeEventResetCopyWithImpl<$Res>
    extends _$AboutMeEventCopyWithImpl<$Res>
    implements $AboutMeEventResetCopyWith<$Res> {
  _$AboutMeEventResetCopyWithImpl(
      AboutMeEventReset _value, $Res Function(AboutMeEventReset) _then)
      : super(_value, (v) => _then(v as AboutMeEventReset));

  @override
  AboutMeEventReset get _value => super._value as AboutMeEventReset;
}

/// @nodoc

class _$AboutMeEventReset implements AboutMeEventReset {
  const _$AboutMeEventReset();

  @override
  String toString() {
    return 'AboutMeEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AboutMeEventReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
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
    required TResult Function(AboutMeEventFetch value) fetch,
    required TResult Function(AboutMeEventReset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutMeEventFetch value)? fetch,
    TResult Function(AboutMeEventReset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class AboutMeEventReset implements AboutMeEvent {
  const factory AboutMeEventReset() = _$AboutMeEventReset;
}

/// @nodoc
class _$AboutMeStateTearOff {
  const _$AboutMeStateTearOff();

  AboutMeStateEmpty empty() {
    return const AboutMeStateEmpty();
  }

  AboutMeStateLoaded loaded(List<Job>? jobs, List<Skill>? skills) {
    return AboutMeStateLoaded(
      jobs,
      skills,
    );
  }

  AboutMeStateLoading loading() {
    return const AboutMeStateLoading();
  }

  AboutMeStateError error() {
    return const AboutMeStateError();
  }
}

/// @nodoc
const $AboutMeState = _$AboutMeStateTearOff();

/// @nodoc
mixin _$AboutMeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Job>? jobs, List<Skill>? skills) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Job>? jobs, List<Skill>? skills)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AboutMeStateEmpty value) empty,
    required TResult Function(AboutMeStateLoaded value) loaded,
    required TResult Function(AboutMeStateLoading value) loading,
    required TResult Function(AboutMeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutMeStateEmpty value)? empty,
    TResult Function(AboutMeStateLoaded value)? loaded,
    TResult Function(AboutMeStateLoading value)? loading,
    TResult Function(AboutMeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutMeStateCopyWith<$Res> {
  factory $AboutMeStateCopyWith(
          AboutMeState value, $Res Function(AboutMeState) then) =
      _$AboutMeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AboutMeStateCopyWithImpl<$Res> implements $AboutMeStateCopyWith<$Res> {
  _$AboutMeStateCopyWithImpl(this._value, this._then);

  final AboutMeState _value;
  // ignore: unused_field
  final $Res Function(AboutMeState) _then;
}

/// @nodoc
abstract class $AboutMeStateEmptyCopyWith<$Res> {
  factory $AboutMeStateEmptyCopyWith(
          AboutMeStateEmpty value, $Res Function(AboutMeStateEmpty) then) =
      _$AboutMeStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$AboutMeStateEmptyCopyWithImpl<$Res>
    extends _$AboutMeStateCopyWithImpl<$Res>
    implements $AboutMeStateEmptyCopyWith<$Res> {
  _$AboutMeStateEmptyCopyWithImpl(
      AboutMeStateEmpty _value, $Res Function(AboutMeStateEmpty) _then)
      : super(_value, (v) => _then(v as AboutMeStateEmpty));

  @override
  AboutMeStateEmpty get _value => super._value as AboutMeStateEmpty;
}

/// @nodoc

class _$AboutMeStateEmpty implements AboutMeStateEmpty {
  const _$AboutMeStateEmpty();

  @override
  String toString() {
    return 'AboutMeState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AboutMeStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Job>? jobs, List<Skill>? skills) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Job>? jobs, List<Skill>? skills)? loaded,
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
    required TResult Function(AboutMeStateEmpty value) empty,
    required TResult Function(AboutMeStateLoaded value) loaded,
    required TResult Function(AboutMeStateLoading value) loading,
    required TResult Function(AboutMeStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutMeStateEmpty value)? empty,
    TResult Function(AboutMeStateLoaded value)? loaded,
    TResult Function(AboutMeStateLoading value)? loading,
    TResult Function(AboutMeStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class AboutMeStateEmpty implements AboutMeState {
  const factory AboutMeStateEmpty() = _$AboutMeStateEmpty;
}

/// @nodoc
abstract class $AboutMeStateLoadedCopyWith<$Res> {
  factory $AboutMeStateLoadedCopyWith(
          AboutMeStateLoaded value, $Res Function(AboutMeStateLoaded) then) =
      _$AboutMeStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Job>? jobs, List<Skill>? skills});
}

/// @nodoc
class _$AboutMeStateLoadedCopyWithImpl<$Res>
    extends _$AboutMeStateCopyWithImpl<$Res>
    implements $AboutMeStateLoadedCopyWith<$Res> {
  _$AboutMeStateLoadedCopyWithImpl(
      AboutMeStateLoaded _value, $Res Function(AboutMeStateLoaded) _then)
      : super(_value, (v) => _then(v as AboutMeStateLoaded));

  @override
  AboutMeStateLoaded get _value => super._value as AboutMeStateLoaded;

  @override
  $Res call({
    Object? jobs = freezed,
    Object? skills = freezed,
  }) {
    return _then(AboutMeStateLoaded(
      jobs == freezed
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Job>?,
      skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
    ));
  }
}

/// @nodoc

class _$AboutMeStateLoaded implements AboutMeStateLoaded {
  const _$AboutMeStateLoaded(this.jobs, this.skills);

  @override
  final List<Job>? jobs;
  @override
  final List<Skill>? skills;

  @override
  String toString() {
    return 'AboutMeState.loaded(jobs: $jobs, skills: $skills)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AboutMeStateLoaded &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)) &&
            (identical(other.skills, skills) ||
                const DeepCollectionEquality().equals(other.skills, skills)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(jobs) ^
      const DeepCollectionEquality().hash(skills);

  @JsonKey(ignore: true)
  @override
  $AboutMeStateLoadedCopyWith<AboutMeStateLoaded> get copyWith =>
      _$AboutMeStateLoadedCopyWithImpl<AboutMeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Job>? jobs, List<Skill>? skills) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loaded(jobs, skills);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Job>? jobs, List<Skill>? skills)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(jobs, skills);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AboutMeStateEmpty value) empty,
    required TResult Function(AboutMeStateLoaded value) loaded,
    required TResult Function(AboutMeStateLoading value) loading,
    required TResult Function(AboutMeStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutMeStateEmpty value)? empty,
    TResult Function(AboutMeStateLoaded value)? loaded,
    TResult Function(AboutMeStateLoading value)? loading,
    TResult Function(AboutMeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AboutMeStateLoaded implements AboutMeState {
  const factory AboutMeStateLoaded(List<Job>? jobs, List<Skill>? skills) =
      _$AboutMeStateLoaded;

  List<Job>? get jobs => throw _privateConstructorUsedError;
  List<Skill>? get skills => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutMeStateLoadedCopyWith<AboutMeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutMeStateLoadingCopyWith<$Res> {
  factory $AboutMeStateLoadingCopyWith(
          AboutMeStateLoading value, $Res Function(AboutMeStateLoading) then) =
      _$AboutMeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AboutMeStateLoadingCopyWithImpl<$Res>
    extends _$AboutMeStateCopyWithImpl<$Res>
    implements $AboutMeStateLoadingCopyWith<$Res> {
  _$AboutMeStateLoadingCopyWithImpl(
      AboutMeStateLoading _value, $Res Function(AboutMeStateLoading) _then)
      : super(_value, (v) => _then(v as AboutMeStateLoading));

  @override
  AboutMeStateLoading get _value => super._value as AboutMeStateLoading;
}

/// @nodoc

class _$AboutMeStateLoading implements AboutMeStateLoading {
  const _$AboutMeStateLoading();

  @override
  String toString() {
    return 'AboutMeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AboutMeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Job>? jobs, List<Skill>? skills) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Job>? jobs, List<Skill>? skills)? loaded,
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
    required TResult Function(AboutMeStateEmpty value) empty,
    required TResult Function(AboutMeStateLoaded value) loaded,
    required TResult Function(AboutMeStateLoading value) loading,
    required TResult Function(AboutMeStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutMeStateEmpty value)? empty,
    TResult Function(AboutMeStateLoaded value)? loaded,
    TResult Function(AboutMeStateLoading value)? loading,
    TResult Function(AboutMeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AboutMeStateLoading implements AboutMeState {
  const factory AboutMeStateLoading() = _$AboutMeStateLoading;
}

/// @nodoc
abstract class $AboutMeStateErrorCopyWith<$Res> {
  factory $AboutMeStateErrorCopyWith(
          AboutMeStateError value, $Res Function(AboutMeStateError) then) =
      _$AboutMeStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$AboutMeStateErrorCopyWithImpl<$Res>
    extends _$AboutMeStateCopyWithImpl<$Res>
    implements $AboutMeStateErrorCopyWith<$Res> {
  _$AboutMeStateErrorCopyWithImpl(
      AboutMeStateError _value, $Res Function(AboutMeStateError) _then)
      : super(_value, (v) => _then(v as AboutMeStateError));

  @override
  AboutMeStateError get _value => super._value as AboutMeStateError;
}

/// @nodoc

class _$AboutMeStateError implements AboutMeStateError {
  const _$AboutMeStateError();

  @override
  String toString() {
    return 'AboutMeState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AboutMeStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Job>? jobs, List<Skill>? skills) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Job>? jobs, List<Skill>? skills)? loaded,
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
    required TResult Function(AboutMeStateEmpty value) empty,
    required TResult Function(AboutMeStateLoaded value) loaded,
    required TResult Function(AboutMeStateLoading value) loading,
    required TResult Function(AboutMeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutMeStateEmpty value)? empty,
    TResult Function(AboutMeStateLoaded value)? loaded,
    TResult Function(AboutMeStateLoading value)? loading,
    TResult Function(AboutMeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AboutMeStateError implements AboutMeState {
  const factory AboutMeStateError() = _$AboutMeStateError;
}
