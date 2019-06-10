import 'dart:io';

import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/widgets/drawer/drawer_md2.dart';
import 'package:provider/provider.dart';

import 'providers/bloc.dart';
import 'providers/navigation_provider.dart';

void main() {
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
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>.value(
          notifier: ThemeProvider(),
        ),
        ChangeNotifierProvider<NavigationProvider>.value(
          notifier: NavigationProvider(),
        ),
        ChangeNotifierProvider<Bloc>.value(
          notifier: Bloc(),
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

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: brightness == Brightness.dark
                ? Colors.black12
                : Theme.of(context).primaryColor,
          ),
          drawer: constraints.maxWidth < 1000
              ? DrawlerMaterialDesign2()
              : null,
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
