// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/ui/common/widgets/welcome_widgets/welcome_large.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              AspectRatio(
                aspectRatio: 1.0,
                child: CircleAvatar(
                  child: ClipOval(
                    child: SvgPicture.asset(
                      "assets/images/dbbd59.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  radius: MediaQuery.of(context).size.width * .1,
                ),
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
                      "",
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
