// 📦 Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/dependency_injection/injections.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
  asExtension: false,
)
Future<void> configureDependencies() async => $initGetIt(getIt);
