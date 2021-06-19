// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:package_info_plus/package_info_plus.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/change_notifier/theme_changenotifier.dart';
import 'package:portfolio_flutter/core/core.dart';
import 'package:portfolio_flutter/flutter_info.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            value: getIt<ThemeChangeNotifier>().isFpsEnable,
            onChanged: (bool value) {
              setState(() {
                getIt<ThemeChangeNotifier>().enableFps = value;
              });
            },
            secondary: const Text('Show FPS'),
          ),
        ),
        const Info(),
      ],
    );
  }
}

class Info extends StatefulWidget {
  const Info({
    Key? key,
  }) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        showAboutDialog(
          context: context,
          applicationIcon: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: 32,
                height: 32,
                child: Image.asset(
                  'assets/icon.png',
                ),
              ),
            ),
          ),
          applicationName: 'portfolio_flutter',
          applicationVersion: _packageInfo.version,
          children: [
            Row(
              children: [
                const FlutterLogo(
                  size: 30,
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(kFlutterChannel),
                    const Text(kFlutterFrameworkVersion),
                  ],
                ),
              ],
            ),
          ],
        );
      },
      child: const Text('Info'),
    );
  }
}
