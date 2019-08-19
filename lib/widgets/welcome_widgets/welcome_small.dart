import 'package:flutter_web/material.dart';
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
                    "https://scontent-cdg2-1.cdninstagram.com/vp/89dde4d5b5c8dae27794012b37a281b3/5D798DBD/t51.2885-19/s320x320/58453660_411757989373588_4475648126237016064_n.jpg?_nc_ht=scontent-cdg2-1.cdninstagram.com"),
                radius: MediaQuery.of(context).size.height * 0.20,
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Hi! My name is",
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
                    style: TextStyle(
                      fontSize: 46.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                "I am a Mobile Developer with a passion for technology. Now I'm working on development with Flutter.",
                style: TextStyle(
                  fontSize: 20.0,
                ),
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
