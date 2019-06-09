import 'dart:io';

import 'package:flutter_web/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter_web/material.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/widgets/drawer/drawer_md2.dart';
import 'package:provider/provider.dart';

import 'providers/bloc.dart';
import 'providers/navigation_provider.dart';

void main() {
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
        ChangeNotifierProvider<Bloc>.value(
          value: Bloc(),
        ),
      ],
      child: MaterialAppWidget(),
    );
  }
}

class MaterialAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Brightness brightness = Provider.of<ThemeProvider>(context).brightnessTheme;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: brightness,
        primaryColor: Colors.blueAccent,
        fontFamily: "GoogleSansRegular",
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

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1256)
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
            ),
            drawer: DrawlerMaterialDesign2(),
            body: currentWidget,
          );
        else
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
            ),
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
