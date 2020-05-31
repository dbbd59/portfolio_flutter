import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_flutter/core/services/api_service.dart';
import 'package:portfolio_flutter/model/job.dart';
import 'package:portfolio_flutter/model/skill.dart';

part 'aboutme_event.dart';
part 'aboutme_state.dart';
part 'aboutme_bloc.freezed.dart';

@Injectable()
class AboutMeBloc extends Bloc<AboutMeEvent, AboutMeState> {
  AboutMeBloc(this._apiService);

  ApiService _apiService;

  @override
  AboutMeState get initialState => AboutMeState.empty();

  @override
  Stream<AboutMeState> mapEventToState(
    AboutMeEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        try {
          yield AboutMeState.loading();
          final List<Job> jobs = await _apiService.fetchJobs();
          final List<Skill> skills = await _apiService.fetchSkills();
          yield AboutMeState.loaded(
            jobs,
            skills,
          );
        } catch (error) {
          yield AboutMeState.error();
        }
      },
      reset: (e) async* {},
    );
  }
}
