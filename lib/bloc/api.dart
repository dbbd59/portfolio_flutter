import 'dart:async';
import 'package:baseapp/helpers/config.dart';
import 'package:baseapp/models/chuck_norris_fact.dart';
import 'package:baseapp/models/github_trend.dart';
import 'package:baseapp/models/news.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
//import 'package:http/http.dart' as http;

const api = Config.apiUrl;

class AppApi {
  static String token;

  static Future<void> authenticate({
    @required String username,
    @required String password,
  }) async {}

  static Future<News> fetchNews() async {
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

  static Future<List<GitHubTrend>> fetchGitHubTrends() async {
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

  static Future<ChuckNorrisFact> fetchChuckNorrisFact() async {
    final String url = "https://api.chucknorris.io/jokes/random";
    Response response = await Dio().get(url);
    if (response.statusCode == 200) {
      return ChuckNorrisFact.fromMap(response.data);
    } else {
      return null;
    }
  }
}
