import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio_flutter/bloc/about_me/aboutme_bloc.dart';
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/model/job.dart';
import 'package:portfolio_flutter/model/skill.dart';
import 'package:portfolio_flutter/repository/api_service/i_api_service.dart';

void main() {
  setUpAll(() async {
    await configureInjection(Env.test);
  });

  group(
    'CounterBloc',
    () {
      blocTest(
        'emits [] when nothing is added',
        build: () async => getIt<MockAboutMeBloc>(),
        act: (bloc) => bloc.add(AboutMeEvent.reset()),
        expect: [
          AboutMeState.empty(),
          AboutMeState.loading(),
        ],
      );
      blocTest(
        'emits [] when nothing is added',
        build: () async => getIt<MockAboutMeBloc>(),
        expect: [],
      );
      blocTest(
        'CounterBloc emits [0, 1] when CounterEvent.increment is added',
        build: () async {
          when(getIt<IApiService>().fetchJobs())
              .thenAnswer((_) async => Future.value([
                    Job(
                      company: "A",
                      date: "B",
                      descr: "C",
                      link: "D",
                      linkDisplay: "E",
                      jobTitle: "F",
                    )
                  ]));
          when(getIt<IApiService>().fetchSkills())
              .thenAnswer((_) async => Future.value([
                    Skill(
                      name: "A",
                      perc: 0.4,
                    )
                  ]));
          return getIt<MockAboutMeBloc>();
        },
        act: (bloc) => bloc.add(AboutMeEvent.fetch()),
        skip: 0,
        expect: [
          AboutMeState.empty(),
          AboutMeState.loading(),
          AboutMeState.loaded([
            Job(
              company: "A",
              date: "B",
              descr: "C",
              link: "D",
              linkDisplay: "E",
              jobTitle: "F",
            )
          ], [
            Skill(
              name: "A",
              perc: 0.4,
            )
          ]),
        ],
      );
    },
  );
}
