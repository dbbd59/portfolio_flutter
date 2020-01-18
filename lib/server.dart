import 'dart:async';

import 'package:dio/dio.dart';
import 'package:portfolio/models/chuck_norris_fact.dart';
import 'package:portfolio/models/github_trend.dart';
import 'package:portfolio/models/news.dart';

class Api {
  static const baseUrl = 'https://www.metaweather.com';

  Future<News> fetchNews() async {
    final String url =
        "https://newsapi.org/v2/everything?q=technology&apiKey=c66c291990c048ff842cacb5aba3f53f";
    Response response = await Dio().get(url);
    if (response.statusCode == 200) {
      var jsonResponse = response.data;
      return News.fromJson(jsonResponse);
    } else {
      return null;
    }
  }

  Future<List<GitHubTrend>> fetchGitHubTrends() async {
    final String url = "https://github-trending-api.now.sh/repositories";
    Response response = await Dio().get(url);
    if (response.statusCode == 200) {
      var jsonResponse = response.data;
      List<GitHubTrend> listGitHubTrend = List<GitHubTrend>();
      if (jsonResponse != null) {
        jsonResponse.forEach((v) {
          listGitHubTrend.add(GitHubTrend.fromJson(v));
        });
      }
      return listGitHubTrend;
    } else {
      return null;
    }
  }

  Future<ChuckNorrisFact> fetchChuckNorrisFact() async {
    final String url = "https://api.chucknorris.io/jokes/random";
    Response response = await Dio().get(url);
    if (response.statusCode == 200) {
      return ChuckNorrisFact.fromMap(response.data);
    } else {
      return null;
    }
  }
}
