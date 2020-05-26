// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:statsfl/statsfl.dart';

// 🌎 Project imports:
import 'package:baseapp/change_notifier/theme_changenotifier.dart';
import 'package:baseapp/change_notifier/utility_changenotifier.dart';
import 'package:baseapp/core/app_localizations.dart';
import 'package:baseapp/helper/providers_helper.dart';
import 'package:baseapp/injections.dart';
import 'package:baseapp/bloc/auth/auth_bloc.dart';
import 'package:baseapp/ui/main/responsive_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Env.prod);
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: MultiProvider(
        providers: providers,
        child: AppWidget(),
      ),
    );
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeChangeNotifier>(
      builder: (context, theme, child) {
        return MaterialApp(
          builder: (context, child) {
            print(getIt<ThemeChangeNotifier>().pippo);
            print(theme.pippo);

            return MediaQuery(
              child: child,
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            );
          },
          theme: getIt<ThemeChangeNotifier>().lightTheme(context),
          darkTheme: getIt<ThemeChangeNotifier>().darkTheme(context),
          themeMode: getIt<ThemeChangeNotifier>().pippo
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
            isEnabled: Provider.of<UtilityChangeNotifier>(context).showFps,
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return ResponsivePage();
              },
            ),
          ),
        );
      },
    );
  }
}
