import 'package:flutter_web/material.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:provider/provider.dart';

class WelcomeLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UtilitiesProvider utility = Provider.of<UtilitiesProvider>(context);

    return Padding(
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
                      "https://scontent-cdg2-1.cdninstagram.com/vp/89dde4d5b5c8dae27794012b37a281b3/5D798DBD/t51.2885-19/s320x320/58453660_411757989373588_4475648126237016064_n.jpg?_nc_ht=scontent-cdg2-1.cdninstagram.com"),
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
                          "Hi! My name is",
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
                          "Davide\nBolzoni",
                          textScaleFactor: 1,
                          style: TextStyle(
                            fontSize: 46.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "I am a Mobile Developer with a passion for technology. Now I'm working on development with Flutter.",
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Wrap(
                      spacing: 16,
                      children: <Widget>[
                        OutlineButton(
                          onPressed: () {
                            utility.launchURL(
                              url: "https://github.com/dbbd59",
                              name: "Github",
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
                              url:
                                  "https://www.linkedin.com/in/davide-bolzoni-a54958112/",
                              name: "Linkedin",
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
                              url:
                                  "https://drive.google.com/file/d/1YOZgCtKcuiEyMS-XdZCupMw6-_6nGRev/view?usp=sharing",
                              name: "resume",
                            );
                          },
                          child: Text(
                            "CV",
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
                              name: "mail",
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
