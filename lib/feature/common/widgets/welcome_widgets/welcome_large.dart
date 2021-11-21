// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 🌎 Project imports:
import 'package:portfolio_flutter/core/core.dart';
import 'package:portfolio_flutter/utils/utility/utility_repository.dart';

class WelcomeLarge extends StatelessWidget {
  const WelcomeLarge({
    Key? key,
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
                        backgroundImage: const AssetImage(
                          'assets/images/dbbd59.png',
                        ),
                        backgroundColor: Colors.transparent,
                        radius: MediaQuery.of(context).size.width * 0.10,
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
    Key? key,
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
        OutlinedButton(
          onPressed: () {
            getIt<UtilityRepository>().launchURL(
              url: 'https://github.com/dbbd59',
            );
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.focused)) {
                  return Theme.of(context).primaryColor;
                }
                if (states.contains(MaterialState.hovered)) {
                  return Theme.of(context).primaryColor.withOpacity(.3);
                }
                if (states.contains(MaterialState.pressed)) {
                  return Theme.of(context).primaryColor;
                }

                return null; // Defer to the widget's default.
              },
            ),
            foregroundColor: MaterialStateProperty.all<Color?>(
              Theme.of(context).textTheme.bodyText1!.color,
            ),
          ),
          child: const Text(
            'GitHub',
            style: TextStyle(),
          ),
        ),
        OutlinedButton(
          onPressed: () {
            getIt<UtilityRepository>().launchURL(
              url: 'https://www.linkedin.com/in/davide-bolzoni-a54958112/',
            );
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.focused)) {
                  return Theme.of(context).primaryColor;
                }
                if (states.contains(MaterialState.hovered)) {
                  return Theme.of(context).primaryColor.withOpacity(.3);
                }
                if (states.contains(MaterialState.pressed)) {
                  return Theme.of(context).primaryColor;
                }

                return null; // Defer to the widget's default.
              },
            ),
            foregroundColor: MaterialStateProperty.all<Color?>(
              Theme.of(context).textTheme.bodyText1!.color,
            ),
          ),
          child: const Text(
            'Linkedin',
            style: TextStyle(),
          ),
        ),
        OutlinedButton(
          onPressed: () {
            getIt<UtilityRepository>().launchURL(
              url: 'mailto:davide.bolzoni59@gmail.com',
            );
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.focused)) {
                  return Theme.of(context).primaryColor;
                }
                if (states.contains(MaterialState.hovered)) {
                  return Theme.of(context).primaryColor.withOpacity(.3);
                }
                if (states.contains(MaterialState.pressed)) {
                  return Theme.of(context).primaryColor;
                }

                return null; // Defer to the widget's default.
              },
            ),
            foregroundColor: MaterialStateProperty.all<Color?>(
              Theme.of(context).textTheme.bodyText1!.color,
            ),
          ),
          child: const Text(
            'Say Hi!',
            style: TextStyle(),
          ),
        ),
      ],
    );
  }
}
