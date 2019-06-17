import 'dart:async';
import 'dart:convert';

import 'package:portfolio/models/github_trend.dart';
import 'package:portfolio/models/news.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/models/weather.dart';

class Api {
  static const baseUrl = 'https://www.metaweather.com';

  Future<News> fetchNews() async {
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

  Future<List<GitHubTrend>> fetchGitHubTrends() async {
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

  Future<int> _getLocationId({String city}) async {
    final String url = '$baseUrl/api/location/search/?query=$city';
    var response = await http.get(url);
    if (response.statusCode != 200) {
      throw Exception('error getting locationId for city');
    }

    final locationJson = jsonDecode(response.body) as List;
    return (locationJson.first)['woeid'];
  }

  Future<Weather> _fetchWeather({int locationId}) async {
    final String url = '$baseUrl/api/location/$locationId';
    var response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('error getting weather for location');
    }

    final weatherJson = jsonDecode(response.body);
    return Weather.fromJson(weatherJson);
  }

  Future<Weather> getWeather({String city}) async {
    final int locationId = await _getLocationId(city: city);
    return await _fetchWeather(locationId: locationId);
  }
}
