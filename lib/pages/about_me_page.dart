import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:provider/provider.dart';

class AboutMePage extends StatelessWidget {
  final List<Map<String, dynamic>> jobsList = [
    {
      "date": "mag 19 - now",
      "company": "Wher",
      "jobTitle": "Mobile Developer",
      "descr":
          "Head of App development for iOS and Android with Flutter. Use of Agile methodology. App published on stores and used by 25,000 users. Cooperation with the UX/UI and Marketing Team",
    },
    {
      "date": "feb 18 - may 19",
      "company": "BlueIt spa",
      "link": "https://www.blueit.it/en/",
      "linkDisplay": "BlueIT.com",
      "jobTitle": "Full Stack Developer",
      "descr":
          "Innovation Lab, spin-off of Blueit s.p.a, company which works on software based on AI. Completely made with Opensource tools. Mobile development of native apps with Flutter, backend development with GraphQL, web development with Angular and Iot projects.",
    },
    {
      "date": "oct 17 - jan 18",
      "company": "Prodigyt Srl",
      "link": "https://www.touch400.com/",
      "linkDisplay": "touch400.com",
      "jobTitle": "Software Developer",
      "descr":
          "Internship. Developing Android and iOS apps. Development of UI components to be integrated into the company's main framework.",
    },
  ];
  final List<Map<String, dynamic>> skillList = [
    {
      "name": "Flutter",
      "perc": 0.90,
    },
    {
      "name": "Dart",
      "perc": 0.85,
    },
    {
      "name": "NodeJS",
      "perc": 0.75,
    },
    {
      "name": "GraphQL",
      "perc": 0.65,
    },
    {
      "name": "Javascript",
      "perc": 0.75,
    },
    {
      "name": "Angular",
      "perc": 0.60,
    },
    {
      "name": "Scrum - Agile",
      "perc": 0.80,
    },
    {
      "name": "Rest API",
      "perc": 0.90,
    },
  ];
  @override
  Widget build(BuildContext context) {
    UtilitiesProvider utility = Provider.of<UtilitiesProvider>(context);
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: (constraints.maxWidth >= 600) ? 150.0 : 16,
                    right: (constraints.maxWidth >= 600) ? 150.0 : 16,
                    top: (constraints.maxWidth >= 600) ? 30.0 : 16,
                    bottom: (constraints.maxWidth >= 600) ? 30.0 : 16,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "SKILLS",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      for (var skill in skillList)
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        skill["name"],
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                          color:
                                              (themeProvider.brightnessTheme ==
                                                      Brightness.light)
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                      .withOpacity(.24)
                                                  : Colors.white,
                                        ),
                                        height: 12,
                                        width: constraints.maxWidth,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                          ),
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        height: 12,
                                        width: constraints.maxWidth *
                                            skill["perc"],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: (constraints.maxWidth >= 600) ? 150.0 : 16,
                    right: (constraints.maxWidth >= 600) ? 150.0 : 16,
                    top: (constraints.maxWidth >= 600) ? 30.0 : 16,
                    bottom: (constraints.maxWidth >= 600) ? 30.0 : 16,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "EXPERIENCE",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      for (var job in jobsList)
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Stack(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 50.0,
                                    top: 50,
                                    bottom: 50,
                                  ),
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(32.0),
                                      child: Container(
                                        width: double.infinity,
                                        child: (constraints.maxWidth >= 600)
                                            ? Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Text(
                                                          job["company"],
                                                          style: TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  10),
                                                            ),
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    16.0),
                                                            child: Text(
                                                              job["date"],
                                                            ),
                                                          ),
                                                        ),
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: job[
                                                                    "linkDisplay"],
                                                                style:
                                                                    TextStyle(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                                recognizer:
                                                                    TapGestureRecognizer()
                                                                      ..onTap =
                                                                          () {
                                                                        utility
                                                                            .launchURL(
                                                                          url: job["link"] ??
                                                                              "",
                                                                        );
                                                                      },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 3,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Text(
                                                          job["jobTitle"],
                                                          style: TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          job["descr"],
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )
                                            : Column(
                                                children: <Widget>[
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(10),
                                                          ),
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  16.0),
                                                          child: Text(
                                                            job["date"],
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        job["company"],
                                                        style: TextStyle(
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: job[
                                                                  "linkDisplay"],
                                                              style: TextStyle(
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColor,
                                                              ),
                                                              recognizer:
                                                                  TapGestureRecognizer()
                                                                    ..onTap =
                                                                        () {
                                                                      utility
                                                                          .launchURL(
                                                                        url: job[
                                                                            "link"],
                                                                      );
                                                                    },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        job["jobTitle"],
                                                        style: TextStyle(
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        job["descr"],
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0.0,
                                  bottom: 0.0,
                                  left: 35.0,
                                  child: Container(
                                    height: double.infinity,
                                    width: 2.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Positioned(
                                  top: 0.0,
                                  left: 15.0,
                                  child: Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.all(5.0),
                                      height: 30.0,
                                      width: 30.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
