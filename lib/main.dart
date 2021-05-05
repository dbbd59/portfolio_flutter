// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:statsfl/statsfl.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/bloc/auth/auth_bloc.dart';
import 'package:portfolio_flutter/change_notifier/theme_changenotifier.dart';
import 'package:portfolio_flutter/change_notifier/utility_changenotifier.dart';
import 'package:portfolio_flutter/core/app_localizations.dart';
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/ui/main/responsive_page.dart';
import 'bloc/bottomappbar/bottomappbar_bloc.dart';
import 'bloc/dialog/dialog_bloc.dart';
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';

void main() async {
  configureApp();
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Env.dev);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>()
            ..add(
              AuthEventStart(),
            ),
        ),
        BlocProvider<BottomAppBarBloc>(
          create: (context) => getIt<BottomAppBarBloc>(),
        ),
        BlocProvider<DialogBloc>(
          create: (context) => getIt<DialogBloc>(),
        ),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => getIt<ThemeChangeNotifier>()),
          ChangeNotifierProvider(
              create: (context) => getIt<UtilityChangeNotifier>()),
        ],
        child: const AppWidget(),
      ),
    );
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeChangeNotifier>(
      builder: (context, theme, child) {
        return MaterialApp(
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            );
          },
          theme: getIt<ThemeChangeNotifier>().lightTheme(context),
          darkTheme: getIt<ThemeChangeNotifier>().darkTheme(context),
          themeMode: getIt<ThemeChangeNotifier>().isDark
              ? ThemeMode.dark
              : ThemeMode.light,
          supportedLocales: [
            const Locale('en', 'US'),
            const Locale('it', 'IT'),
          ],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale!.languageCode &&
                  supportedLocale.countryCode == locale.countryCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
          home: StatsFl(
            isEnabled: Provider.of<UtilityChangeNotifier>(context).showFps,
            width: 600,
            height: 30,
            maxFps: 120,
            sampleTime: .1,
            totalTime: 30,
            align: const Alignment(1.0, -0.9),
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return const ResponsivePage();
              },
            ),
          ),
        );
      },
    );
  }
}
