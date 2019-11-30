import 'package:flutter/material.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:portfolio/widgets/welcome_widgets/welcome_large.dart';
import 'package:provider/provider.dart';

class WelcomeSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UtilitiesProvider utility = Provider.of<UtilitiesProvider>(context);

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.licdn.com/dms/image/C4D03AQGCIgIwGyMQRA/profile-displayphoto-shrink_200_200/0?e=1577923200&v=beta&t=y1vN2SHS9O059O76ws6IyiQ2MvHySC4-QysDzo1tkXU"),
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
                  Text(
                    "a Mobile Developer with a passion for technology.",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              ButtonsRowWelcome(utility: utility),
            ],
          ),
        ),
      ),
    );
  }
}
