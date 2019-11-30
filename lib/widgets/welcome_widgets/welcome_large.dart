import 'package:flutter/material.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:provider/provider.dart';

class WelcomeLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UtilitiesProvider utility = Provider.of<UtilitiesProvider>(context);

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://media.licdn.com/dms/image/C4D03AQGCIgIwGyMQRA/profile-displayphoto-shrink_200_200/0?e=1577923200&v=beta&t=y1vN2SHS9O059O76ws6IyiQ2MvHySC4-QysDzo1tkXU"),
                    radius: MediaQuery.of(context).size.width * 0.20,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "HELLO WORLD, I'M",
                            textScaleFactor: 1,
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "DAVIDE\nBOLZONI",
                            textScaleFactor: 1,
                            style: TextStyle(
                              fontSize: 46.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "a Mobile Developer with a passion for technology.",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ButtonsRowWelcome(utility: utility),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonsRowWelcome extends StatelessWidget {
  const ButtonsRowWelcome({
    Key key,
    @required this.utility,
  }) : super(key: key);

  final UtilitiesProvider utility;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      runSpacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 16,
      children: <Widget>[
        OutlineButton(
          onPressed: () {
            utility.launchURL(
              url: "https://github.com/dbbd59",
            );
          },
          child: Text(
            "GitHub",
            style: TextStyle(),
          ),
          splashColor: Theme.of(context).primaryColor,
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        OutlineButton(
          onPressed: () {
            utility.launchURL(
              url: "https://www.linkedin.com/in/davide-bolzoni-a54958112/",
            );
          },
          child: Text(
            "Linkedin",
            style: TextStyle(),
          ),
          splashColor: Theme.of(context).primaryColor,
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        OutlineButton(
          onPressed: () {
            utility.launchURL(
              url: "mailto:davide.bolzoni59@gmail.com",
            );
          },
          child: Text(
            "Say Hi!",
            style: TextStyle(),
          ),
          splashColor: Theme.of(context).primaryColor,
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
