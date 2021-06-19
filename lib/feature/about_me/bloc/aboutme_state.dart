part of 'aboutme_bloc.dart';

@freezed
class AboutMeState with _$AboutMeState {
  const factory AboutMeState.empty() = AboutMeStateEmpty;
  const factory AboutMeState.loaded(List<Job>? jobs, List<Skill>? skills) =
      AboutMeStateLoaded;
  const factory AboutMeState.loading() = AboutMeStateLoading;
  const factory AboutMeState.error() = AboutMeStateError;
}
