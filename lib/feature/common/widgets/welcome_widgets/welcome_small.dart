// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/feature/common/widgets/welcome_widgets/welcome_large.dart';

class WelcomeSmall extends StatelessWidget {
  const WelcomeSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.0,
                child: CircleAvatar(
                  backgroundImage: const AssetImage(
                    'assets/images/dbbd59.png',
                  ),
                  backgroundColor: Colors.transparent,
                  radius: MediaQuery.of(context).size.width * 0.10,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'HELLO WORLD, I\'M',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  const Text(
                    'DAVIDE\nBOLZONI',
                    style: TextStyle(
                      fontSize: 46.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  const Expanded(
                    child: Text(
                      '',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const ButtonsRowWelcome(),
            ],
          ),
        ),
      ),
    );
  }
}
