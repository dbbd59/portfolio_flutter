// 🎯 Dart imports:
import 'dart:async';
import 'dart:convert';

// 📦 Package imports:
import 'package:dio/dio.dart';
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

  String token;

  @override
  IHttpService httpService;

  Future<News> fetchNews() async {
    Response response = await httpService.httpServiceGet(
      endpoint: "https://safe-tor-42804.herokuapp.com/api/news",
    );
    if (response.statusCode == 200) {
      var jsonResponse = response.data;
      return News.fromJson(jsonResponse);
    } else {
      return null;
    }
  }

  Future<List<GitHubTrend>> fetchGitHubTrends() async {
    Response response = await httpService.httpServiceGet(
      endpoint: "https://safe-tor-42804.herokuapp.com/api/ghtrends",
    );
    if (response.statusCode == 200) {
      List<GitHubTrend> listGitHubTrend = List<GitHubTrend>();
      if (response.data != null) {
        var jsonResponse = jsonDecode(response.data);

        List<GitHubTrend> trends = List<GitHubTrend>.from(
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

  Future<List<Job>> fetchJobs() async {
    Response response = await httpService.httpServiceGet(
      endpoint: "https://safe-tor-42804.herokuapp.com/api/jobs",
    );
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.data);

      List<Job> jobs = List<Job>.from(
        jsonResponse.map(
          (x) => Job.fromMap(x),
        ),
      );
      return jobs;
    } else {
      return null;
    }
  }

  Future<List<Skill>> fetchSkills() async {
    Response response = await httpService.httpServiceGet(
      endpoint: "https://safe-tor-42804.herokuapp.com/api/skills",
    );
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.data);

      List<Skill> skills = List<Skill>.from(
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
