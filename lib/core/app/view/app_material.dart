// 🎯 Dart imports:
import 'dart:async';
import 'dart:developer';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:layout/layout.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';
import 'package:uni_links/uni_links.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/app/view/app_scaffold.dart';
import 'package:portfolio_flutter/core/change_notifier/theme_changenotifier.dart';
import 'package:portfolio_flutter/core/core.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: [
        const Locale('en'),
        const Locale('it'),
      ],
      fallbackLocale: const Locale('en', 'US'),
      useOnlyLangCode: true,
      path: 'translations',
      assetLoader: const CodegenLoader(),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => getIt<ThemeChangeNotifier>(),
          ),
        ],
        child: Layout(
          format: MaterialLayoutFormat(),
          child: const AppMaterial(),
        ),
      ),
    );
  }
}

class AppMaterial extends StatelessWidget {
  const AppMaterial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeChangeNotifier>(
      builder: (context, theme, child) {
        return MaterialApp.router(
          routeInformationParser: const RoutemasterParser(),
          routerDelegate: routemaster,
          builder: (context, child) {
            return MaterialApp(
              theme: getIt<ThemeChangeNotifier>().lightTheme(context),
              darkTheme: getIt<ThemeChangeNotifier>().darkTheme(context),
              themeMode: getIt<ThemeChangeNotifier>().isDark
                  ? ThemeMode.dark
                  : ThemeMode.light,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              home: AppScaffold(
                child: child,
              ),
            );
          },
        );
      },
    );
  }
}

class LinkHandler {
  final void Function(String link) onLink;
  // ignore: cancel_subscriptions
  StreamSubscription<String?>? _subscription;

  LinkHandler({required this.onLink});

  Future<Null> init() async {
    if (_subscription != null) {
      return;
    }

    _subscription = linkStream.listen(_onLink);

    try {
      final initialLink = await getInitialLink();

      if (initialLink != null) {
        _onLink(initialLink);
      }
    } catch (_) {}
  }

  void _onLink(String? link) {
    final l = link!
        .replaceFirst('myreco://', '')
        .replaceFirst('http//', '')
        .replaceFirst('8080', '');
    final uri = Uri.tryParse(l);
    onLink('${uri?.path}?${uri?.query}');
  }

  void dispose() {
    _subscription!.cancel();
  }
}
