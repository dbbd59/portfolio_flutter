import 'dart:async';
import 'dart:convert';

import 'package:portfolio/models/github_trend.dart';
import 'package:portfolio/models/news.dart';
import 'package:http/http.dart' as http;

class Api {
  static Future<News> fetchNews() async {
    final String url =
        "https://newsapi.org/v2/everything?q=technology&apiKey=c66c291990c048ff842cacb5aba3f53f";
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      return News.fromJson(jsonResponse);
    } else {
      return null;
    }
  }

  static Future<List<GitHubTrend>> fetchGitHubTrends() async {
    final String url = "https://github-trending-api.now.sh/repositories";
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
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
}
