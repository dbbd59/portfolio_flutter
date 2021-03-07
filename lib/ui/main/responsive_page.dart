// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/app_localizations.dart';
import 'package:portfolio_flutter/helper/adaptive.dart';
import 'package:portfolio_flutter/ui/main/main_page.dart';
import 'package:portfolio_flutter/ui/main/widgets/bottom_nav_bar_app.dart';
import 'package:portfolio_flutter/ui/main/widgets/drawer_app.dart';

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({
    Key? key,
  }) : super(key: key);

  @override
  _ResponsivePageState createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  @override
  Widget build(BuildContext context) {
    final displayType = displayTypeOf(context);
    switch (displayType) {
      case DisplayType.MOBILE:
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(
              AppLocalizations.of(context)!.translate('main_app_bar_title'),
            ),
          ),
          drawer: const DrawerApp(),
          bottomNavigationBar: const BottomNavBarApp(),
          body: MainPage(),
        );
      case DisplayType.DESKTOP:
        return Row(
          children: [
            const DrawerApp(),
            const VerticalDivider(width: 1),
            Expanded(
              child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  title: Text(
                    AppLocalizations.of(context)!
                        .translate('main_app_bar_title'),
                  ),
                ),
                body: MainPage(),
              ),
            ),
          ],
        );
      default:
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(
              'Default${AppLocalizations.of(context)!.translate('main_app_bar_title')}',
            ),
          ),
          body: Container(),
        );
    }
  }
}
