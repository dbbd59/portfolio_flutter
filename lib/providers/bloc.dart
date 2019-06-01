import 'package:flutter/material.dart';
import 'package:portfolio/Apis/Api.dart';
import 'package:portfolio/models/news.dart';

class Bloc extends ChangeNotifier {
  News news;

  Bloc() {
    fetchNews();
  }
  fetchNews() async {
    print("Fetch");
    news = await Api.fetchNews();
    notifyListeners();
  }
}
