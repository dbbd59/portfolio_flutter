import 'dart:async';

import 'package:dio/dio.dart';
import 'package:portfolio/models/github_trend.dart';
import 'package:portfolio/models/news.dart';
import 'package:portfolio/models/weather.dart';

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

  Future<int> _getLocationId({String city}) async {
    final String url = '$baseUrl/api/location/search/?query=$city';
    Response response = await Dio().get(url);
    if (response.statusCode != 200) {
      throw Exception('error getting locationId for city');
    }

    final locationJson = response.data as List;
    return (locationJson.first)['woeid'];
  }

  Future<Weather> _fetchWeather({int locationId}) async {
    final String url = '$baseUrl/api/location/$locationId';
    Response response = await Dio().get(url);

    if (response.statusCode != 200) {
      throw Exception('error getting weather for location');
    }

    final weatherJson = response.data;
    return Weather.fromJson(weatherJson);
  }

  Future<Weather> getWeather({String city}) async {
    final int locationId = await _getLocationId(city: city);
    return await _fetchWeather(locationId: locationId);
  }
}
