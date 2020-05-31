part of 'aboutme_bloc.dart';

@freezed
abstract class AboutMeEvent with _$AboutMeEvent {
  const factory AboutMeEvent.fetch() = AboutMeEventFetch;
  const factory AboutMeEvent.reset() = AboutMeEventReset;
}
