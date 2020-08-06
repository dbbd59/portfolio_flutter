// 🐦 Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_flutter/bloc/about_me/aboutme_bloc.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/injections.dart';

import '../../model/job.dart';
import '../../model/skill.dart';
import '../../repository/utility/i_utility_repository.dart';

/* 
class AboutMePage extends StatelessWidget {
  const AboutMePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AboutMeBloc>(
      create: (context) => getIt<AboutMeBloc>(),
      child: Container(),
    );
  }
} */
class AboutMePage extends StatelessWidget {
  const AboutMePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AboutMeBloc>(
      create: (context) => getIt<AboutMeBloc>()
        ..add(
          AboutMeEvent.fetch(),
        ),
      child: AboutMeBody(),
    );
  }
}

class AboutMeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: BlocBuilder<AboutMeBloc, AboutMeState>(
            builder: (context, state) {
              return state.map(
                empty: (_) => Container(),
                loaded: (AboutMeStateLoaded state) => AboutMeContent(
                  jobs: state.jobs,
                  skills: state.skills,
                ),
                loading: (_) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ),
                error: (_) => Center(
                  child: Text("Error"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class AboutMeContent extends StatelessWidget {
  const AboutMeContent({
    Key key,
    @required this.jobs,
    @required this.skills,
  }) : super(key: key);
  final List<Job> jobs;
  final List<Skill> skills;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Padding(
                padding: EdgeInsets.only(
                  left: (constraints.maxWidth >= 600) ? 150.0 : 16,
                  right: (constraints.maxWidth >= 600) ? 150.0 : 16,
                  top: (constraints.maxWidth >= 600) ? 30.0 : 16,
                  bottom: (constraints.maxWidth >= 600) ? 30.0 : 16,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "SKILLS",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    for (var skill in skills)
                      SkillItem(
                        skill: skill,
                      ),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Padding(
                padding: EdgeInsets.only(
                  left: (constraints.maxWidth >= 600) ? 150.0 : 16,
                  right: (constraints.maxWidth >= 600) ? 150.0 : 16,
                  top: (constraints.maxWidth >= 600) ? 30.0 : 16,
                  bottom: (constraints.maxWidth >= 600) ? 30.0 : 16,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "EXPERIENCE",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    for (var job in jobs)
                      JobItem(
                        job: job,
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class JobItem extends StatelessWidget {
  const JobItem({
    Key key,
    @required this.job,
  }) : super(key: key);

  final Job job;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 50.0,
                top: 50,
                bottom: 50,
              ),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Container(
                    width: double.infinity,
                    child: (constraints.maxWidth >= 600)
                        ? Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      job.company,
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Text(
                                          job.date,
                                        ),
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: job.linkDisplay,
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                getIt<IUtilityRepository>()
                                                    .launchURL(
                                                  url: job.link ?? "",
                                                );
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      job.jobTitle,
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      job.descr,
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text(
                                        job.date,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    job.company,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: job.linkDisplay,
                                          style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              getIt<IUtilityRepository>()
                                                  .launchURL(
                                                url: job.link,
                                              );
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    job.jobTitle,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    job.descr,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              bottom: 0.0,
              left: 35.0,
              child: Container(
                height: double.infinity,
                width: 2.0,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 0.0,
              left: 15.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class SkillItem extends StatelessWidget {
  const SkillItem({
    Key key,
    @required this.skill,
  }) : super(key: key);

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    skill.name,
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    height: 12,
                    width: constraints.maxWidth,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    height: 12,
                    width: constraints.maxWidth * skill.perc,
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
