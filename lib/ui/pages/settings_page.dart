import 'package:flutter/material.dart';
import 'package:portfolio_flutter/change_notifier/theme_changenotifier.dart';
import 'package:portfolio_flutter/change_notifier/utility_changenotifier.dart';
import 'package:portfolio_flutter/injections.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SwitchListTile(
              value: getIt<ThemeChangeNotifier>().isDark,
              onChanged: (bool value) {
                setState(() {
                  getIt<ThemeChangeNotifier>().isDark = value;
                });
              },
              secondary: Icon(
                getIt<ThemeChangeNotifier>().isDark
                    ? Icons.brightness_7
                    : Icons.brightness_2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SwitchListTile(
              value: getIt<UtilityChangeNotifier>().showFps,
              onChanged: (bool value) {
                setState(() {
                  getIt<UtilityChangeNotifier>().showFps = value;
                });
              },
              secondary: Text("Show FPS"),
            ),
          ),
          MaterialButton(
              //icon: Icon(Icons.info),
              child: Text("More info"),
              color: Theme.of(context).accentColor,
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: SizedBox(
                        width: 32,
                        height: 32,
                        child: FlutterLogo(),
                      ),
                    ),
                  ),
                  applicationName: "portfolio_flutter",
                  applicationVersion: "1.9.1",
                );
              }),
        ],
      ),
    );
  }
}
