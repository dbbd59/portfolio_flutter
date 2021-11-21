// 🎯 Dart imports:
import 'dart:async';

import 'package:dante/dante.dart';
// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
// 🌎 Project imports:
import 'package:portfolio_flutter/core/core.dart';
import 'package:routemaster/routemaster.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initApp();

  runZonedGuarded(
    () => runApp(const App()),
    (error, stackTrace) {
      Dante.e(error.toString(), error, stackTrace);
    },
  );
}

Future _initApp() async {
  final futures = <Future>[
    EasyLocalization.ensureInitialized(),
    configureDependencies(),
  ];

  Routemaster.setPathUrlStrategy();
  FlutterError.onError = (details) {
    Dante.e(details.exceptionAsString(), details, details.stack);
  };

  await Future.wait(futures);
}
