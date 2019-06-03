import 'dart:io';

import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
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
        ChangeNotifierProvider<NavigationProvider>.value(
          notifier: NavigationProvider(),
        ),
        ChangeNotifierProvider<Bloc>.value(
          notifier: Bloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blue,
          fontFamily: 'ProductSans',
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(),
        },
      ),
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
