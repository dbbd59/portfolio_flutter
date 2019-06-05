import 'package:flutter/material.dart';
import 'package:portfolio/Apis/Api.dart';
import 'package:portfolio/models/news.dart';
import 'package:logger/logger.dart';

class Bloc extends ChangeNotifier {
  News news;
  var logger = Logger(
    printer: PrettyPrinter(
      colors: false,
      printEmojis: true,
    ),
  );

  Future<void> fetchNews() async {
    news = await Api.fetchNews();
    //logger.v(news.toJson());
    notifyListeners();
  }
}
