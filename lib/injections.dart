// 📦 Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/injections.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String environment) async {
  await $initGetIt(getIt, environment: environment);
}

const test = Environment('test');
const dev = Environment('dev');
const prod = Environment('prod');

abstract class Env {
  static const test = 'test';
  static const dev = 'dev';
  static const prod = 'prod';
}
