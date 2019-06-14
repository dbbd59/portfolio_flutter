import 'dart:io';

import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:portfolio/Apis/Api.dart';
import 'package:portfolio/providers/state_provider.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:portfolio/stores/github_trend_store.dart/github_trend_store.dart';
import 'package:portfolio/stores/news_store/news_store.dart';
import 'package:portfolio/widgets/drawer/drawer_md2.dart';
import 'package:provider/provider.dart';
import 'providers/navigation_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  Provider.debugCheckInvalidValueType = null;
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String token = prefs.getString('token');
  _setTargetPlatformForDesktop();
  runApp(
    MyApp(
      token: token,
    ),
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
  final String token;
  MyApp({this.token});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<StateProvider>.value(
          value: StateProvider(token: token)..init(),
        ),
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
        ProxyProvider<Api, GitHubTrendStore>(
          builder: (context, api, gitHubTrendStore) =>
              GitHubTrendStore(api: api),
        ),
        ProxyProvider<Api, NewsStore>(
          builder: (context, api, newsStore) => NewsStore(api: api),
        )
      ],
      child: MaterialAppWidget(),
    );
  }
}

class MaterialAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Brightness brightness = Provider.of<ThemeProvider>(context).brightnessTheme;
    Color primaryColor = Provider.of<ThemeProvider>(context).primaryColorTheme;

    return MaterialApp(
      title: 'Flutter Demo',
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
    StateProvider stateProvider = Provider.of<StateProvider>(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: brightness == Brightness.dark
                ? Colors.black26
                : Theme.of(context).primaryColor,
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  stateProvider.setLoggedIn(false);
                },
                icon: Icon(
                  Icons.exit_to_app,
                ),
              )
            ],
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
