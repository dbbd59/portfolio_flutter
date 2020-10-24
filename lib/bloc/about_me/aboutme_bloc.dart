// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/model/job.dart';
import 'package:portfolio_flutter/model/skill.dart';
import 'package:portfolio_flutter/repository/api_service/i_api_service.dart';

part 'aboutme_event.dart';
part 'aboutme_state.dart';
part 'aboutme_bloc.freezed.dart';

@Injectable(env: [Env.dev])
class AboutMeBloc extends Bloc<AboutMeEvent, AboutMeState> {
  AboutMeBloc(this._apiService) : super(AboutMeState.empty());

  IApiService _apiService;

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
      reset: (e) async* {
        yield AboutMeState.loading();
      },
    );
  }
}

@Injectable(env: [Env.test])
class MockAboutMeBloc extends MockBloc<AboutMeBloc> implements AboutMeBloc {
  MockAboutMeBloc(this._apiService);

  IApiService _apiService;
}
