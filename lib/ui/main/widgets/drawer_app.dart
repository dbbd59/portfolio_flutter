// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/bloc/bottomappbar/bottomappbar_bloc.dart';
import 'package:portfolio_flutter/core/app_localizations.dart';
import 'package:portfolio_flutter/model/enums/navigation_page_enum.dart';
import 'package:portfolio_flutter/ui/pages/settings_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerApp extends StatefulWidget {
  const DrawerApp({
    Key key,
  }) : super(key: key);

  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.maybePop(context);
                  BlocProvider.of<BottomAppBarBloc>(context).add(
                    BottomAppBarEventPageChanged(
                      selectedPage: NavigationPageEnum.WELCOME,
                    ),
                  );
                },
                child: const DrawerAppHeader()),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  children: <Widget>[
                    DrawerAppListItem(
                      label: AppLocalizations.of(context)
                          .translate('bottom_nav_bar_second'),
                      icon: Icons.star,
                      route: NavigationPageEnum.GITHUBTRENDS,
                      onPressed: () {
                        Navigator.maybePop(context);
                        BlocProvider.of<BottomAppBarBloc>(context).add(
                          BottomAppBarEventPageChanged(
                            selectedPage: NavigationPageEnum.GITHUBTRENDS,
                          ),
                        );
                      },
                    ),
                    DrawerAppListItem(
                      label: AppLocalizations.of(context)
                          .translate('bottom_nav_bar_third'),
                      icon: Icons.flare,
                      route: NavigationPageEnum.NEWS,
                      onPressed: () {
                        Navigator.maybePop(context);
                        BlocProvider.of<BottomAppBarBloc>(context).add(
                          BottomAppBarEventPageChanged(
                            selectedPage: NavigationPageEnum.NEWS,
                          ),
                        );
                      },
                    ),
                    DrawerAppListItem(
                      label: AppLocalizations.of(context)
                          .translate('bottom_nav_bar_fifth'),
                      icon: Icons.person,
                      route: NavigationPageEnum.ABOUTME,
                      onPressed: () {
                        Navigator.maybePop(context);
                        BlocProvider.of<BottomAppBarBloc>(context).add(
                          BottomAppBarEventPageChanged(
                            selectedPage: NavigationPageEnum.ABOUTME,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            DrawerAppListItem(
              label: 'Settings',
              icon: Icons.settings,
              //route: NavigationPageEnum.ABOUTME,
              onPressed: () {
                Navigator.maybePop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerAppListItem extends StatelessWidget {
  const DrawerAppListItem({
    Key key,
    @required this.label,
    @required this.icon,
    @required this.onPressed,
    this.route,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final Function onPressed;
  final NavigationPageEnum route;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomAppBarBloc, BottomAppBarState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(left: 8.0, right: 8.0),
          height: 48,
          child: InkWell(
            onTap: onPressed,
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 2.0,
              ),
              decoration: BoxDecoration(
                color: route != null && state.pageSelected == route
                    ? Theme.of(context).primaryColor.withOpacity(0.12)
                    : null,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 16.0,
                  ),
                  Icon(
                    icon,
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Text(
                    label,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class DrawerAppHeader extends StatelessWidget {
  const DrawerAppHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(
        margin: const EdgeInsets.only(
          top: 16.0,
          right: 16.0,
          bottom: 8.0,
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 50,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: CircleAvatar(
                  child: ClipOval(
                    child: SvgPicture.asset(
                      'assets/images/dbbd59.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  radius: MediaQuery.of(context).size.width * 0.10,
                ),
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Davide Bolzoni',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                const Text(
                  'davide.bolzoni59@gmail.com',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
