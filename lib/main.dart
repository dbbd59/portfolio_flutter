// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:statsfl/statsfl.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/change_notifier/theme_changenotifier.dart';
import 'package:portfolio_flutter/change_notifier/utility_changenotifier.dart';
import 'package:portfolio_flutter/core/app_localizations.dart';
import 'package:portfolio_flutter/helper/providers_helper.dart';
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/bloc/auth/auth_bloc.dart';
import 'package:portfolio_flutter/ui/main/responsive_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Env.prod);
  runApp(
    NotPay(
      child: MyApp(),
      daysDeadline: 30,
      dueDate: DateTime(2099, 6, 10),
    ),
  );
}

class NotPay extends StatefulWidget {
  NotPay({
    @required this.child,
    @required this.daysDeadline,
    @required this.dueDate,
  });

  final Widget child;
  final int daysDeadline;
  final DateTime dueDate;

  @override
  _NotPayState createState() => _NotPayState();
}

class _NotPayState extends State<NotPay> {
  double opacity = 0;

  @override
  void initState() {
    DateTime utc2 = DateTime.now().toUtc();
    DateTime utc1 = widget.dueDate.toUtc();
    int days = utc1.difference(utc2).inDays.round();
    if (days > 0) {
      var daysLate = widget.daysDeadline - days;
      opacity = (daysLate * 100 / widget.daysDeadline) / 100;
      opacity = (opacity < 0) ? 0 : opacity;
      opacity = (opacity > 1) ? 1 : opacity;
      opacity = 1 - opacity;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      alwaysIncludeSemantics: true,
      opacity: opacity,
      child: widget.child,
    );
  }
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
            return MediaQuery(
              child: child,
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            );
          },
          theme: getIt<ThemeChangeNotifier>().lightTheme(context),
          darkTheme: getIt<ThemeChangeNotifier>().darkTheme(context),
          themeMode: getIt<ThemeChangeNotifier>().isDark
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
