// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/services/http_service.dart';
import 'package:portfolio_flutter/model/github_trend.dart';
import 'package:portfolio_flutter/model/job.dart';
import 'package:portfolio_flutter/model/news.dart';
import 'package:portfolio_flutter/model/skill.dart';

class ApiService {
  ApiService(this._httpService);

  String token;

  HttpService _httpService;

  Future<News> fetchNews() async {
    Response response = await _httpService.httpServiceGet(
      endpoint:
          "https://newsapi.org/v2/everything?q=technology&apiKey=c66c291990c048ff842cacb5aba3f53f",
    );
    if (response.statusCode == 200) {
      var jsonResponse = response.data;
      return News.fromJson(jsonResponse);
    } else {
      return null;
    }
  }

  Future<List<GitHubTrend>> fetchGitHubTrends() async {
    Response response = await _httpService.httpServiceGet(
      endpoint: "https://github-trending-api.now.sh/repositories",
    );
    if (response.statusCode == 200) {
      List<GitHubTrend> listGitHubTrend = List<GitHubTrend>();
      if (response.data != null) {
        response.data.forEach((v) {
          listGitHubTrend.add(GitHubTrend.fromJson(v));
        });
      }
      return listGitHubTrend;
    } else {
      return null;
    }
  }

  Future<List<Job>> fetchJobs() async {
    Response response = await _httpService.httpServiceGet(
      endpoint: "https://my-json-server.typicode.com/dbbd59/json_server/jobs",
    );
    if (response.statusCode == 200) {
      List<Job> jobs = List<Job>();
      if (response.data != null) {
        response.data.forEach((v) {
          jobs.add(Job.fromMap(v));
        });
      }
      return jobs;
    } else {
      return null;
    }
  }

  Future<List<Skill>> fetchSkills() async {
    Response response = await _httpService.httpServiceGet(
      endpoint: "https://my-json-server.typicode.com/dbbd59/json_server/skills",
    );
    if (response.statusCode == 200) {
      List<Skill> skills = List<Skill>();
      if (response.data != null) {
        response.data.forEach((v) {
          skills.add(Skill.fromMap(v));
        });
      }
      return skills;
    } else {
      return null;
    }
  }
}
