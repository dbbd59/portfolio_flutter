import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AppConfig {
  AppConfig({
    @required this.app,
    @required this.environment,
  });

  final App app;
  final Environment environment;

  static Future<AppConfig> forEnvironment(Environment environment) async {
    environment = environment ?? Environment.Dev;

    final contents = await rootBundle.loadString(
      'config/${environment.value.toLowerCase()}.json',
    );

    final json = jsonDecode(contents);
    return AppConfig(
      app: App.fromJson(
        json['App'],
      ),
      environment: environment,
    );
  }
}

enum Environment {
  Dev,
  Prod,
}

extension EntityExtension on Environment {
  static String _value(Environment val) {
    switch (val) {
      case Environment.Dev:
        return "Dev";
      case Environment.Prod:
        return "Prod";
    }
    return "";
  }

  String get value => _value(this);
}

class App {
  App({
    @required this.apiUrl,
  });

  factory App.fromJson(Map<String, dynamic> json) => App(
        apiUrl: json["ApiUrl"],
      );

  final String apiUrl;
}
