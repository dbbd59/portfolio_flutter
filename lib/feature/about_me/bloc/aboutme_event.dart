part of 'aboutme_bloc.dart';

@freezed
class AboutMeEvent with _$AboutMeEvent {
  const factory AboutMeEvent.fetch() = AboutMeEventFetch;
  const factory AboutMeEvent.reset() = AboutMeEventReset;
}
