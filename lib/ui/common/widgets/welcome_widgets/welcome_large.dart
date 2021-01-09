// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/repository/utility/i_utility_repository.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeLarge extends StatelessWidget {
  const WelcomeLarge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    child: AspectRatio(
                      aspectRatio: 1.0,
                      child: CircleAvatar(
                        child: ClipOval(
                          child: SvgPicture.asset(
                            'assets/images/dbbd59.svg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        radius: MediaQuery.of(context).size.width * .1,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'HELLO WORLD, I\'M',
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
                          const Text(
                            'DAVIDE\nBOLZONI',
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
                          const Expanded(
                            child: Text(
                              '',
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const ButtonsRowWelcome(),
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
  }) : super(key: key);

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
            getIt<IUtilityRepository>().launchURL(
              url: 'https://github.com/dbbd59',
            );
          },
          child: const Text(
            'GitHub',
            style: TextStyle(),
          ),
          splashColor: Theme.of(context).primaryColor,
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        OutlineButton(
          onPressed: () {
            getIt<IUtilityRepository>().launchURL(
              url: 'https://www.linkedin.com/in/davide-bolzoni-a54958112/',
            );
          },
          child: const Text(
            'Linkedin',
            style: TextStyle(),
          ),
          splashColor: Theme.of(context).primaryColor,
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        OutlineButton(
          onPressed: () {
            getIt<IUtilityRepository>().launchURL(
              url: 'mailto:davide.bolzoni59@gmail.com',
            );
          },
          child: const Text(
            'Say Hi!',
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
