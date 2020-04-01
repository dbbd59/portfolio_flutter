import 'dart:async';
import 'package:baseapp/services/http_service.dart';
import 'package:baseapp/shared/injection_container.dart';
import 'package:dio/dio.dart';

import '../models/chuck_norris_fact.dart';
import '../models/github_trend.dart';
import '../models/news.dart';

class ApiService {
  String token;

  Future<News> fetchNews() async {
    Response response = await getIt<HttpService>().httpServiceGet(
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

  Future<ChuckNorrisFact> fetchChuckNorrisFact() async {
    Response response = await getIt<HttpService>().httpServiceGet(
      endpoint: "https://api.chucknorris.io/jokes/random",
    );
    if (response.statusCode == 200) {
      return ChuckNorrisFact.fromMap(response.data);
    } else {
      return null;
    }
  }

  Future<List<GitHubTrend>> fetchGitHubTrends() async {
    Response response = await getIt<HttpService>().httpServiceGet(
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
}
