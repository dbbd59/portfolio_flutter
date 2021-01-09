// 🎯 Dart imports:
import 'dart:async';
import 'dart:convert';

// 📦 Package imports:
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/model/github_trend.dart';
import 'package:portfolio_flutter/model/job.dart';
import 'package:portfolio_flutter/model/news.dart';
import 'package:portfolio_flutter/model/skill.dart';
import 'package:portfolio_flutter/repository/api_service/i_api_service.dart';
import 'package:portfolio_flutter/repository/http_service/i_http_service.dart';

@Singleton(as: IApiService, env: [Env.dev])
class ApiService implements IApiService {
  ApiService(this.httpService);

  @override
  String token;

  @override
  IHttpService httpService;

  @override
  Future<News> fetchNews() async {
    final response = await httpService.httpServiceGet(
      endpoint: 'https://safe-tor-42804.herokuapp.com/api/news',
    );
    if (response.statusCode == 200) {
      final jsonResponse = response.data;
      return News.fromJson(jsonResponse);
    } else {
      return null;
    }
  }

  @override
  Future<List<GitHubTrend>> fetchGitHubTrends() async {
    final response = await httpService.httpServiceGet(
      endpoint: 'https://safe-tor-42804.herokuapp.com/api/ghtrends',
    );
    if (response.statusCode == 200) {
      final listGitHubTrend = <GitHubTrend>[];
      if (response.data != null) {
        final jsonResponse = jsonDecode(response.data);

        final trends = List<GitHubTrend>.from(
          jsonResponse.map(
            (x) {
              return GitHubTrend.fromMap(x);
            },
          ),
        );
        return trends;
      }
      return listGitHubTrend;
    } else {
      return null;
    }
  }

  @override
  Future<List<Job>> fetchJobs() async {
    final response = await httpService.httpServiceGet(
      endpoint: 'https://safe-tor-42804.herokuapp.com/api/jobs',
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.data);

      final jobs = List<Job>.from(
        jsonResponse.map(
          (x) => Job.fromMap(x),
        ),
      );
      return jobs;
    } else {
      return null;
    }
  }

  @override
  Future<List<Skill>> fetchSkills() async {
    final response = await httpService.httpServiceGet(
      endpoint: 'https://safe-tor-42804.herokuapp.com/api/skills',
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.data);

      final skills = List<Skill>.from(
        jsonResponse.map(
          (x) => Skill.fromMap(x),
        ),
      );
      return skills;
    } else {
      return null;
    }
  }
}

@Singleton(as: IApiService, env: [Env.test])
class MockApiService extends Mock implements IApiService {}
