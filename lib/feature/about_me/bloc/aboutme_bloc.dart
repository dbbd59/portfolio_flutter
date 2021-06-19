// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/feature/about_me/repo/about_me_repo.dart';
import 'package:portfolio_flutter/model/job.dart';
import 'package:portfolio_flutter/model/skill.dart';

part 'aboutme_event.dart';
part 'aboutme_state.dart';
part 'aboutme_bloc.freezed.dart';

@injectable
class AboutMeBloc extends Bloc<AboutMeEvent, AboutMeState> {
  AboutMeBloc(this.repo) : super(const AboutMeState.empty());

  final AboutMeRepo repo;

  @override
  Stream<AboutMeState> mapEventToState(
    AboutMeEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        try {
          yield const AboutMeState.loading();
          final jobs = await repo.fetchJobs();
          final skills = await repo.fetchSkills();
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
