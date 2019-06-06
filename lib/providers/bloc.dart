import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/stores/news_store/news_store.dart';
import 'package:url_launcher/url_launcher.dart';

class Bloc extends ChangeNotifier {
  var logger = Logger(
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
    ),
  );

  launchURL({@required String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  NewsStore newsStore = NewsStore();
}
