// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'aboutme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AboutMeEventTearOff {
  const _$AboutMeEventTearOff();

  AboutMeEventFetch fetch() {
    return const AboutMeEventFetch();
  }

  AboutMeEventReset reset() {
    return const AboutMeEventReset();
  }
}

// ignore: unused_element
const $AboutMeEvent = _$AboutMeEventTearOff();

mixin _$AboutMeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result reset(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result reset(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(AboutMeEventFetch value),
    @required Result reset(AboutMeEventReset value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(AboutMeEventFetch value),
    Result reset(AboutMeEventReset value),
    @required Result orElse(),
  });
}

abstract class $AboutMeEventCopyWith<$Res> {
  factory $AboutMeEventCopyWith(
          AboutMeEvent value, $Res Function(AboutMeEvent) then) =
      _$AboutMeEventCopyWithImpl<$Res>;
}

class _$AboutMeEventCopyWithImpl<$Res> implements $AboutMeEventCopyWith<$Res> {
  _$AboutMeEventCopyWithImpl(this._value, this._then);

  final AboutMeEvent _value;
  // ignore: unused_field
  final $Res Function(AboutMeEvent) _then;
}

abstract class $AboutMeEventFetchCopyWith<$Res> {
  factory $AboutMeEventFetchCopyWith(
          AboutMeEventFetch value, $Res Function(AboutMeEventFetch) then) =
      _$AboutMeEventFetchCopyWithImpl<$Res>;
}

class _$AboutMeEventFetchCopyWithImpl<$Res>
    extends _$AboutMeEventCopyWithImpl<$Res>
    implements $AboutMeEventFetchCopyWith<$Res> {
  _$AboutMeEventFetchCopyWithImpl(
      AboutMeEventFetch _value, $Res Function(AboutMeEventFetch) _then)
      : super(_value, (v) => _then(v as AboutMeEventFetch));

  @override
  AboutMeEventFetch get _value => super._value as AboutMeEventFetch;
}

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
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result reset(),
  }) {
    assert(fetch != null);
    assert(reset != null);
    return fetch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result reset(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(AboutMeEventFetch value),
    @required Result reset(AboutMeEventReset value),
  }) {
    assert(fetch != null);
    assert(reset != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(AboutMeEventFetch value),
    Result reset(AboutMeEventReset value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class AboutMeEventFetch implements AboutMeEvent {
  const factory AboutMeEventFetch() = _$AboutMeEventFetch;
}

abstract class $AboutMeEventResetCopyWith<$Res> {
  factory $AboutMeEventResetCopyWith(
          AboutMeEventReset value, $Res Function(AboutMeEventReset) then) =
      _$AboutMeEventResetCopyWithImpl<$Res>;
}

class _$AboutMeEventResetCopyWithImpl<$Res>
    extends _$AboutMeEventCopyWithImpl<$Res>
    implements $AboutMeEventResetCopyWith<$Res> {
  _$AboutMeEventResetCopyWithImpl(
      AboutMeEventReset _value, $Res Function(AboutMeEventReset) _then)
      : super(_value, (v) => _then(v as AboutMeEventReset));

  @override
  AboutMeEventReset get _value => super._value as AboutMeEventReset;
}

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
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result reset(),
  }) {
    assert(fetch != null);
    assert(reset != null);
    return reset();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
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
    @required Result fetch(AboutMeEventFetch value),
    @required Result reset(AboutMeEventReset value),
  }) {
    assert(fetch != null);
    assert(reset != null);
    return reset(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(AboutMeEventFetch value),
    Result reset(AboutMeEventReset value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class AboutMeEventReset implements AboutMeEvent {
  const factory AboutMeEventReset() = _$AboutMeEventReset;
}

class _$AboutMeStateTearOff {
  const _$AboutMeStateTearOff();

  AboutMeStateEmpty empty() {
    return const AboutMeStateEmpty();
  }

  AboutMeStateLoaded loaded(List<Job> jobs, List<Skill> skills) {
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

// ignore: unused_element
const $AboutMeState = _$AboutMeStateTearOff();

mixin _$AboutMeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(List<Job> jobs, List<Skill> skills),
    @required Result loading(),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loaded(List<Job> jobs, List<Skill> skills),
    Result loading(),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(AboutMeStateEmpty value),
    @required Result loaded(AboutMeStateLoaded value),
    @required Result loading(AboutMeStateLoading value),
    @required Result error(AboutMeStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(AboutMeStateEmpty value),
    Result loaded(AboutMeStateLoaded value),
    Result loading(AboutMeStateLoading value),
    Result error(AboutMeStateError value),
    @required Result orElse(),
  });
}

abstract class $AboutMeStateCopyWith<$Res> {
  factory $AboutMeStateCopyWith(
          AboutMeState value, $Res Function(AboutMeState) then) =
      _$AboutMeStateCopyWithImpl<$Res>;
}

class _$AboutMeStateCopyWithImpl<$Res> implements $AboutMeStateCopyWith<$Res> {
  _$AboutMeStateCopyWithImpl(this._value, this._then);

  final AboutMeState _value;
  // ignore: unused_field
  final $Res Function(AboutMeState) _then;
}

abstract class $AboutMeStateEmptyCopyWith<$Res> {
  factory $AboutMeStateEmptyCopyWith(
          AboutMeStateEmpty value, $Res Function(AboutMeStateEmpty) then) =
      _$AboutMeStateEmptyCopyWithImpl<$Res>;
}

class _$AboutMeStateEmptyCopyWithImpl<$Res>
    extends _$AboutMeStateCopyWithImpl<$Res>
    implements $AboutMeStateEmptyCopyWith<$Res> {
  _$AboutMeStateEmptyCopyWithImpl(
      AboutMeStateEmpty _value, $Res Function(AboutMeStateEmpty) _then)
      : super(_value, (v) => _then(v as AboutMeStateEmpty));

  @override
  AboutMeStateEmpty get _value => super._value as AboutMeStateEmpty;
}

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
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(List<Job> jobs, List<Skill> skills),
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
    Result loaded(List<Job> jobs, List<Skill> skills),
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
    @required Result empty(AboutMeStateEmpty value),
    @required Result loaded(AboutMeStateLoaded value),
    @required Result loading(AboutMeStateLoading value),
    @required Result error(AboutMeStateError value),
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
    Result empty(AboutMeStateEmpty value),
    Result loaded(AboutMeStateLoaded value),
    Result loading(AboutMeStateLoading value),
    Result error(AboutMeStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class AboutMeStateEmpty implements AboutMeState {
  const factory AboutMeStateEmpty() = _$AboutMeStateEmpty;
}

abstract class $AboutMeStateLoadedCopyWith<$Res> {
  factory $AboutMeStateLoadedCopyWith(
          AboutMeStateLoaded value, $Res Function(AboutMeStateLoaded) then) =
      _$AboutMeStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Job> jobs, List<Skill> skills});
}

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
    Object jobs = freezed,
    Object skills = freezed,
  }) {
    return _then(AboutMeStateLoaded(
      jobs == freezed ? _value.jobs : jobs as List<Job>,
      skills == freezed ? _value.skills : skills as List<Skill>,
    ));
  }
}

class _$AboutMeStateLoaded implements AboutMeStateLoaded {
  const _$AboutMeStateLoaded(this.jobs, this.skills)
      : assert(jobs != null),
        assert(skills != null);

  @override
  final List<Job> jobs;
  @override
  final List<Skill> skills;

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

  @override
  $AboutMeStateLoadedCopyWith<AboutMeStateLoaded> get copyWith =>
      _$AboutMeStateLoadedCopyWithImpl<AboutMeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(List<Job> jobs, List<Skill> skills),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(empty != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(jobs, skills);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result loaded(List<Job> jobs, List<Skill> skills),
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(jobs, skills);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(AboutMeStateEmpty value),
    @required Result loaded(AboutMeStateLoaded value),
    @required Result loading(AboutMeStateLoading value),
    @required Result error(AboutMeStateError value),
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
    Result empty(AboutMeStateEmpty value),
    Result loaded(AboutMeStateLoaded value),
    Result loading(AboutMeStateLoading value),
    Result error(AboutMeStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AboutMeStateLoaded implements AboutMeState {
  const factory AboutMeStateLoaded(List<Job> jobs, List<Skill> skills) =
      _$AboutMeStateLoaded;

  List<Job> get jobs;
  List<Skill> get skills;
  $AboutMeStateLoadedCopyWith<AboutMeStateLoaded> get copyWith;
}

abstract class $AboutMeStateLoadingCopyWith<$Res> {
  factory $AboutMeStateLoadingCopyWith(
          AboutMeStateLoading value, $Res Function(AboutMeStateLoading) then) =
      _$AboutMeStateLoadingCopyWithImpl<$Res>;
}

class _$AboutMeStateLoadingCopyWithImpl<$Res>
    extends _$AboutMeStateCopyWithImpl<$Res>
    implements $AboutMeStateLoadingCopyWith<$Res> {
  _$AboutMeStateLoadingCopyWithImpl(
      AboutMeStateLoading _value, $Res Function(AboutMeStateLoading) _then)
      : super(_value, (v) => _then(v as AboutMeStateLoading));

  @override
  AboutMeStateLoading get _value => super._value as AboutMeStateLoading;
}

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
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(List<Job> jobs, List<Skill> skills),
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
    Result loaded(List<Job> jobs, List<Skill> skills),
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
    @required Result empty(AboutMeStateEmpty value),
    @required Result loaded(AboutMeStateLoaded value),
    @required Result loading(AboutMeStateLoading value),
    @required Result error(AboutMeStateError value),
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
    Result empty(AboutMeStateEmpty value),
    Result loaded(AboutMeStateLoaded value),
    Result loading(AboutMeStateLoading value),
    Result error(AboutMeStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AboutMeStateLoading implements AboutMeState {
  const factory AboutMeStateLoading() = _$AboutMeStateLoading;
}

abstract class $AboutMeStateErrorCopyWith<$Res> {
  factory $AboutMeStateErrorCopyWith(
          AboutMeStateError value, $Res Function(AboutMeStateError) then) =
      _$AboutMeStateErrorCopyWithImpl<$Res>;
}

class _$AboutMeStateErrorCopyWithImpl<$Res>
    extends _$AboutMeStateCopyWithImpl<$Res>
    implements $AboutMeStateErrorCopyWith<$Res> {
  _$AboutMeStateErrorCopyWithImpl(
      AboutMeStateError _value, $Res Function(AboutMeStateError) _then)
      : super(_value, (v) => _then(v as AboutMeStateError));

  @override
  AboutMeStateError get _value => super._value as AboutMeStateError;
}

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
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result loaded(List<Job> jobs, List<Skill> skills),
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
    Result loaded(List<Job> jobs, List<Skill> skills),
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
    @required Result empty(AboutMeStateEmpty value),
    @required Result loaded(AboutMeStateLoaded value),
    @required Result loading(AboutMeStateLoading value),
    @required Result error(AboutMeStateError value),
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
    Result empty(AboutMeStateEmpty value),
    Result loaded(AboutMeStateLoaded value),
    Result loading(AboutMeStateLoading value),
    Result error(AboutMeStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AboutMeStateError implements AboutMeState {
  const factory AboutMeStateError() = _$AboutMeStateError;
}
