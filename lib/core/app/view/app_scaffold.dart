// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:layout/layout.dart';
import 'package:portfolio_flutter/core/change_notifier/theme_changenotifier.dart';
// 🌎 Project imports:
import 'package:portfolio_flutter/core/core.dart';
import 'package:routemaster/routemaster.dart';
import 'package:statsfl/statsfl.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    Key? key,
  }) : super(key: key);

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  late final _linkHandler;
  late final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool extended = true;
  @override
  Widget build(BuildContext context) {
    final pageIndex = TabPage.of(context).controller.index;

    return StatsFl(
      isEnabled: getIt<ThemeChangeNotifier>().isFpsEnable,
      align: Alignment.topRight,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          elevation: 1,
          title: GestureDetector(
            onTap: () {
              routemaster.push('/welcome');
            },
            child: const Text('DBBD59'),
          ),
          centerTitle: context.layout.breakpoint <= LayoutBreakpoint.sm,
          leading: context.layout.breakpoint > LayoutBreakpoint.sm
              ? Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        if (context.layout.breakpoint > LayoutBreakpoint.sm) {
                          onExtendedSelect();
                        }
                      },
                    ),
                  ],
                )
              : null,
        ),
        body: Row(
          children: [
            if (context.layout.breakpoint > LayoutBreakpoint.sm) ...[
              NavigationSideBar(
                selectedIndex: pageIndex,
                onIndexSelect: onIndexSelect,
                extended: extended,
              ),
              const VerticalDivider(thickness: 1, width: 1),
            ],
            Expanded(
              key: const ValueKey('HomePageBody'),
              child: PageStackNavigator(
                key: ValueKey(pageIndex),
                stack: TabPage.of(context).stacks[pageIndex],
              ),
            ),
          ],
        ),
        bottomNavigationBar: context.layout.breakpoint < LayoutBreakpoint.md
            ? NavigationBottomBar(
                selectedIndex: pageIndex,
                onIndexSelect: onIndexSelect,
              )
            : null,
      ),
    );
  }

  @override
  void dispose() {
    _linkHandler.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _linkHandler = LinkHandler(
      onLink: (link) {
        routemaster.push(link);
      },
    )..init();
    super.initState();
  }

  void onExtendedSelect() {
    setState(() {
      extended = !extended;
    });
  }

  Future<void> onIndexSelect(newIndex) async {
    switch (newIndex) {
      case 0:
        routemaster.push('/welcome');

        break;
      case 1:
        routemaster.push('/github-trends');

        break;
      case 2:
        routemaster.push('/about-me');

        break;
      case 3:
        routemaster.push('/settings');

        break;
      default:
        routemaster.push('/welcome');
    }
  }
}

class NavigationSideBar extends StatelessWidget {
  const NavigationSideBar({
    required this.selectedIndex,
    required this.onIndexSelect,
    required this.extended,
    Key? key,
  }) : super(key: key);

  final bool extended;
  final Function(int) onIndexSelect;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: onIndexSelect,
      labelType: NavigationRailLabelType.none,
      extended: extended,
      destinations: [
        const NavigationRailDestination(
          icon: Icon(Icons.flutter_dash_outlined),
          selectedIcon: Icon(Icons.flutter_dash),
          label: Text('Welcome'),
        ),
        NavigationRailDestination(
          icon: const Icon(Icons.home_outlined),
          selectedIcon: const Icon(Icons.home),
          label: Text(LocaleKeys.nav_gh.tr()),
        ),
        NavigationRailDestination(
          icon: const Icon(Icons.people_outline),
          selectedIcon: const Icon(Icons.people),
          label: Text(LocaleKeys.nav_about_me.tr()),
        ),
        NavigationRailDestination(
          icon: const Icon(Icons.settings),
          selectedIcon: const Icon(Icons.settings),
          label: Text(LocaleKeys.nav_settings.tr()),
        ),
      ],
    );
  }
}

class NavigationBottomBar extends StatelessWidget {
  const NavigationBottomBar({
    required this.selectedIndex,
    required this.onIndexSelect,
    Key? key,
  }) : super(key: key);

  final Function(int) onIndexSelect;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      selectedIndex: selectedIndex,
      onDestinationSelected: onIndexSelect,
      backgroundColor: Theme.of(context).bottomAppBarColor,
      destinations: [
        const NavigationDestination(
          selectedIcon: Icon(Icons.flutter_dash),
          icon: Icon(Icons.flutter_dash_outlined),
          label: 'Welcome',
        ),
        NavigationDestination(
          selectedIcon: const Icon(Icons.home),
          icon: const Icon(Icons.home_outlined),
          label: LocaleKeys.nav_gh.tr(),
        ),
        NavigationDestination(
          selectedIcon: const Icon(Icons.people),
          icon: const Icon(Icons.people_outline),
          label: LocaleKeys.nav_about_me.tr(),
        ),
        NavigationDestination(
          selectedIcon: const Icon(Icons.settings),
          icon: const Icon(Icons.settings),
          label: LocaleKeys.nav_settings.tr(),
        ),
      ],
    );
  }
}
