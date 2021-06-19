// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:layout/layout.dart';
import 'package:portfolio_flutter/core/change_notifier/theme_changenotifier.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/core.dart';
import 'package:portfolio_flutter/core/widgets/navigation/navigation_bar.dart';
import 'package:statsfl/statsfl.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  bool extended = true;
  int index = 0;

  late final _linkHandler;

  late final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _linkHandler = LinkHandler(onLink: (link) {
      routemaster.push(link);
    })
      ..init();
    super.initState();
  }

  @override
  void dispose() {
    _linkHandler.dispose();
    super.dispose();
  }

  Future<void> onIndexSelect(newIndex) async {
    switch (newIndex) {
      case 0:
        routemaster.push('/github-trends');
        setState(() {
          index = newIndex;
        });
        break;
      case 1:
        routemaster.push('/about-me');
        setState(() {
          index = newIndex;
        });
        break;
      case 2:
        routemaster.push('/settings');
        setState(() {
          index = newIndex;
        });
        break;
      default:
        routemaster.push('/');
    }
  }

  void onExtendedSelect() {
    setState(() {
      extended = !extended;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StatsFl(
      isEnabled: getIt<ThemeChangeNotifier>().isFpsEnable,
      align: Alignment.topRight,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          elevation: 1,
          title: GestureDetector(
            onTap: () {
              routemaster.push('/dashboard');
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
                selectedIndex: index,
                onIndexSelect: onIndexSelect,
                extended: extended,
              ),
              const VerticalDivider(thickness: 1, width: 1),
            ],
            Expanded(
              key: const ValueKey('HomePageBody'),
              child: widget.child!,
            ),
          ],
        ),
        bottomNavigationBar: context.layout.breakpoint < LayoutBreakpoint.md
            ? NavigationBottomBar(
                selectedIndex: index,
                onIndexSelect: onIndexSelect,
              )
            : null,
      ),
    );
  }
}

class NavigationSideBar extends StatelessWidget {
  const NavigationSideBar({
    Key? key,
    required this.selectedIndex,
    required this.onIndexSelect,
    required this.extended,
  }) : super(key: key);

  final Function(int) onIndexSelect;
  final bool extended;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: onIndexSelect,
      labelType: NavigationRailLabelType.none,
      extended: extended,
      destinations: [
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
    Key? key,
    required this.selectedIndex,
    required this.onIndexSelect,
  }) : super(key: key);

  final Function(int) onIndexSelect;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      labelBehavior: NavigationBarDestinationLabelBehavior.onlyShowSelected,
      selectedIndex: selectedIndex,
      onTap: onIndexSelect,
      destinations: [
        NavigationBarDestination(
          icon: const Icon(Icons.home),
          unselectedIcon: const Icon(Icons.home_outlined),
          label: LocaleKeys.nav_gh.tr(),
        ),
        NavigationBarDestination(
          icon: const Icon(Icons.people),
          unselectedIcon: const Icon(Icons.people_outline),
          label: LocaleKeys.nav_about_me.tr(),
        ),
        NavigationBarDestination(
          icon: const Icon(Icons.settings),
          unselectedIcon: const Icon(Icons.settings),
          label: LocaleKeys.nav_settings.tr(),
        ),
      ],
    );
  }
}
