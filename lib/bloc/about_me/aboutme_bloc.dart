// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/model/job.dart';
import 'package:portfolio_flutter/model/skill.dart';
import 'package:portfolio_flutter/repository/api_service/api_service.dart';

part 'aboutme_event.dart';
part 'aboutme_state.dart';
part 'aboutme_bloc.freezed.dart';

@Injectable(env: [Env.dev])
class AboutMeBloc extends Bloc<AboutMeEvent, AboutMeState> {
  AboutMeBloc(this._apiService) : super(const AboutMeState.empty());

  final ApiService? _apiService;

  @override
  Stream<AboutMeState> mapEventToState(
    AboutMeEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        try {
          yield const AboutMeState.loading();
          final jobs = await _apiService!.fetchJobs();
          final skills = await _apiService!.fetchSkills();
          yield AboutMeState.loaded(
            jobs,
            skills,
          );
        } catch (error) {
          yield const AboutMeState.error();
        }
      },
      reset: (e) async* {
        yield const AboutMeState.loading();
      },
    );
  }
}
