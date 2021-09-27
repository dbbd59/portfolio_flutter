// 🎯 Dart imports:
import 'dart:async';

import 'package:dante/dante.dart';
// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
// 🌎 Project imports:
import 'package:portfolio_flutter/core/core.dart';
import 'package:routemaster/routemaster.dart';

void main() async {
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
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    Dante.e(details.exceptionAsString(), details, details.stack);
  };

  await Future.wait(futures);
}
