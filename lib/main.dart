import 'dart:io';

import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/cards/card_horizontal/card_horizontal_md2.dart';
import 'package:portfolio/widgets/drawer/drawer_md2.dart';

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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
        fontFamily: 'ProductSans',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      drawer: DrawlerMaterialDesign2(),
      body: ListView(
        children: <Widget>[
          CardHorizontalMaterialDesign2(
            onTap: () {},
            title: "Rozes",
            subTitle:
                "A list should be easily scannable, and any element of a list can be used to anchor and align list item content. Scannability is improved when elements (such as supporting visual and primary text) are placed in consistent locations across list items.",
            imageNetwork:
                "https://media.timeout.com/images/105404217/750/422/image.jpg",
            //imageAsset: "assets/oltresempionelogo.png",
          ),
          CardHorizontalMaterialDesign2(
            onTap: () {},
            title: "Rozes",
            subTitle:
                "A list should be easily scannable, and any element of a list can be used to anchor and align list item content. Scannability is improved when elements (such as supporting visual and primary text) are placed in consistent locations across list items.",
            imageNetwork:
                "https://media.timeout.com/images/105404217/750/422/image.jpg",
            //imageAsset: "assets/oltresempionelogo.png",
          ),
          CardHorizontalMaterialDesign2(
            onTap: () {},
            title: "Rozes",
            subTitle:
                "A list should be easily scannable, and any element of a list can be used to anchor and align list item content. Scannability is improved when elements (such as supporting visual and primary text) are placed in consistent locations across list items.",
            imageNetwork:
                "https://media.timeout.com/images/105404217/750/422/image.jpg",
            //imageAsset: "assets/oltresempionelogo.png",
          ),
          CardHorizontalMaterialDesign2(
            onTap: () {},
            title: "Rozes",
            subTitle:
                "A list should be easily scannable, and any element of a list can be used to anchor and align list item content. Scannability is improved when elements (such as supporting visual and primary text) are placed in consistent locations across list items.",
            imageNetwork:
                "https://media.timeout.com/images/105404217/750/422/image.jpg",
            //imageAsset: "assets/oltresempionelogo.png",
          ),
          CardHorizontalMaterialDesign2(
            onTap: () {},
            title: "Rozes",
            subTitle:
                "A list should be easily scannable, and any element of a list can be used to anchor and align list item content. Scannability is improved when elements (such as supporting visual and primary text) are placed in consistent locations across list items.",
            imageNetwork:
                "https://media.timeout.com/images/105404217/750/422/image.jpg",
            //imageAsset: "assets/oltresempionelogo.png",
          ),
          CardHorizontalMaterialDesign2(
            onTap: () {},
            title: "Rozes",
            subTitle:
                "A list should be easily scannable, and any element of a list can be used to anchor and align list item content. Scannability is improved when elements (such as supporting visual and primary text) are placed in consistent locations across list items.",
            imageNetwork:
                "https://media.timeout.com/images/105404217/750/422/image.jpg",
            //imageAsset: "assets/oltresempionelogo.png",
          ),
        ],
      ),
    );
  }
}
