// 🎯 Dart imports:
import 'dart:async';
import 'dart:developer';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routemaster/routemaster.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initApp();

  runZonedGuarded(
    () => runApp(const App()),
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
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
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await Future.wait(futures);
}
