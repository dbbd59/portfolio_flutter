import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bloc/github_trend_bloc.dart';
import 'package:portfolio/bloc/news_bloc.dart';
import 'package:portfolio/bloc/weather_bloc.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:portfolio/server.dart';
import 'package:portfolio/widgets/drawer/drawer_md2.dart';
import 'package:provider/provider.dart';
import 'bloc/bloc_delegate.dart';
import 'providers/navigation_provider.dart';

void main() async {
  BlocSupervisor.delegate = SimpleBlocDelegate();

  Provider.debugCheckInvalidValueType = null;

  _setTargetPlatformForDesktop();
  runApp(
    MyApp(),
  );
}

void _setTargetPlatformForDesktop() {
  TargetPlatform targetPlatform;
  if (Platform.isMacOS) {
    targetPlatform = TargetPlatform.iOS;
  } else if (Platform.isLinux || Platform.isWindows) {
    targetPlatform = TargetPlatform.android;
  }
  if (targetPlatform != null) {
    debugDefaultTargetPlatformOverride = targetPlatform;
  }
}

class MyApp extends StatelessWidget {
  final Api api = Api();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeProvider>.value(
            value: ThemeProvider(),
          ),
          ChangeNotifierProvider<NavigationProvider>.value(
            value: NavigationProvider(),
          ),
          Provider<UtilitiesProvider>.value(
            value: UtilitiesProvider(),
          ),
          Provider<Api>.value(
            value: Api(),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider<WeatherBloc>(
              builder: (BuildContext context) => WeatherBloc(
                api: api,
              ),
            ),
            BlocProvider<NewsBloc>(
              builder: (BuildContext context) => NewsBloc(
                api: api,
              ),
            ),
            BlocProvider<GithubTrendBloc>(
              builder: (BuildContext context) => GithubTrendBloc(
                api: api,
              ),
            ),
          ],
          child: MaterialAppWidget(),
        ));
  }
}

class MaterialAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Brightness brightness = Provider.of<ThemeProvider>(context).brightnessTheme;
    Color primaryColor = Provider.of<ThemeProvider>(context).primaryColorTheme;

    return MaterialApp(
      title: 'Davide Bolzoni',
      theme: ThemeData(
        brightness: brightness,
        primaryColor: primaryColor,
        fontFamily: 'ProductSans',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget currentWidget =
        Provider.of<NavigationProvider>(context).currentWidget;
    Brightness brightness = Provider.of<ThemeProvider>(context).brightnessTheme;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: brightness == Brightness.dark
                ? Colors.black26
                : Theme.of(context).primaryColor,
          ),
          drawer: constraints.maxWidth < 1000 ? DrawlerMaterialDesign2() : null,
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (constraints.maxWidth > 1000)
                Container(
                  width: 256,
                  child: DrawlerMaterialDesign2(),
                ),
              Expanded(
                child: currentWidget,
              ),
            ],
          ),
        );
      },
    );
  }
}
