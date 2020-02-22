import 'package:baseapp/helpers/app_localizations.dart';
import 'package:baseapp/bloc/auth/auth_bloc.dart';
import 'package:baseapp/helpers/multi_bloc_provider_helper.dart';
import 'package:baseapp/ui/main/responsive_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'helpers/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: MaterialApp(
        builder: (context, child) {
          return MediaQuery(
            child: child,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          );
        },
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color(0xFFdbbd59),
          accentColor: Color(0xFFdbbd59),
          textTheme: GoogleFonts.mcLarenTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          accentColor: Color(0xFFdbbd59),
          primaryColor: Color(0xFFdbbd59),
          textTheme: GoogleFonts.mcLarenTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        themeMode: ThemeMode.system,
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
        home: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return ResponsivePage();
          },
        ),
      ),
    );
  }
}
