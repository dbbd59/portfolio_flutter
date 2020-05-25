// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:baseapp/ui/common/widgets/welcome_widgets/welcome_large.dart';

class WelcomeSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars3.githubusercontent.com/u/16138584?s=460&v=4"),
                radius: MediaQuery.of(context).size.height * 0.20,
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "HELLO WORLD, I'M",
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
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              ButtonsRowWelcome(),
            ],
          ),
        ),
      ),
    );
  }
}
