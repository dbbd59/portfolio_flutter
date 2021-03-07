// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/model/github_trend.dart';
import 'package:portfolio_flutter/model/job.dart';
import 'package:portfolio_flutter/model/news.dart';
import 'package:portfolio_flutter/model/skill.dart';

@Injectable(env: [Env.dev])
class ApiService {
  String? token;

  Future<News?> fetchNews() async {
    final response =
        await Dio().get('https://go-rest-services.herokuapp.com/api/v1/news');
    if (response.statusCode == 201) {
      final jsonResponse = response.data['data'];
      return News.fromMap(jsonResponse);
    } else {
      return null;
    }
  }

  Future<List<GitHubTrend>?> fetchGitHubTrends() async {
    final response = await Dio()
        .get('https://go-rest-services.herokuapp.com/api/v1/ghtrends');
    if (response.statusCode == 201) {
      final listGitHubTrend = <GitHubTrend>[];
      if (response.data != null) {
        final jsonResponse = response.data['data'];

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
      return [];
    }
  }

  Future<List<Job>?> fetchJobs() async {
    final response =
        await Dio().get('https://go-rest-services.herokuapp.com/api/v1/jobs');
    if (response.statusCode == 201) {
      final jsonResponse = response.data['data'];

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

  Future<List<Skill>?> fetchSkills() async {
    final response =
        await Dio().get('https://go-rest-services.herokuapp.com/api/v1/skills');
    if (response.statusCode == 201) {
      final jsonResponse = response.data['data'];

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
