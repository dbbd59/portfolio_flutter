import 'package:baseapp/repositories/utility/utility_repository.dart';
import 'package:baseapp/shared/app_localizations.dart';
import 'package:baseapp/bloc/auth/auth_bloc.dart';
import 'package:baseapp/shared/app_config.dart';
import 'package:baseapp/shared/injection_container.dart';
import 'package:baseapp/shared/providers_helper.dart';
import 'package:baseapp/theme/theme_repository.dart';
import 'package:baseapp/ui/main/responsive_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'shared/injection_container.dart' as di;
import 'package:statsfl/statsfl.dart';

import 'shared/injection_container.dart';

void main({Environment environment}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: MultiProvider(
        providers: providers,
        child: Consumer<ThemeRepository>(
          builder: (context, theme, child) {
            return MaterialApp(
              builder: (context, child) {
                return MediaQuery(
                  child: child,
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                );
              },
              theme: getIt<ThemeRepository>().buildThemeDataLight(context),
              darkTheme: getIt<ThemeRepository>().buildThemeDataDark(context),
              themeMode: Provider.of<ThemeRepository>(context).isDark
                  ? ThemeMode.dark
                  : ThemeMode.light,
              supportedLocales: [
                Locale('en', 'US'),
                Locale('it', 'IT'),
              ],
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              localeResolutionCallback: (locale, supportedLocales) {
                for (var supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale.languageCode &&
                      supportedLocale.countryCode == locale.countryCode) {
                    return supportedLocale;
                  }
                }
                return supportedLocales.first;
              },
              home: StatsFl(
                align: Alignment.center,
                isEnabled: Provider.of<UtilityRepository>(context).showFps,
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return ResponsivePage();
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
