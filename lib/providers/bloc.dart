import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/stores/news_store/news_store.dart';

class Bloc extends ChangeNotifier {
  var logger = Logger(
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
    ),
  );

  NewsStore newsStore = NewsStore();
}
