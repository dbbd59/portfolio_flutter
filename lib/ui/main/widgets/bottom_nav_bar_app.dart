// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/bloc/bottomappbar/bottomappbar_bloc.dart';
import 'package:portfolio_flutter/core/app_localizations.dart';
import 'package:portfolio_flutter/model/enums/navigation_page_enum.dart';

class BottomNavBarApp extends StatelessWidget {
  const BottomNavBarApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomAppBarBloc, BottomAppBarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          onTap: (int index) {
            NavigationPageEnum navigationPageEnum;
            switch (index) {
              case 0:
                navigationPageEnum = NavigationPageEnum.WELCOME;
                break;
              case 1:
                navigationPageEnum = NavigationPageEnum.GITHUBTRENDS;
                break;
              case 2:
                navigationPageEnum = NavigationPageEnum.NEWS;
                break;
              case 3:
                navigationPageEnum = NavigationPageEnum.ABOUTME;
                break;
              default:
            }
            BlocProvider.of<BottomAppBarBloc>(context).add(
              BottomAppBarEventPageChanged(
                selectedPage: navigationPageEnum,
              ),
            );
          },
          currentIndex: state.pageSelected.index,
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.grey.withOpacity(.80),
          elevation: 0,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: AppLocalizations.of(context)
                  .translate('bottom_nav_bar_first'),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              label: AppLocalizations.of(context)
                  .translate('bottom_nav_bar_second'),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.flare),
              label: AppLocalizations.of(context)
                  .translate('bottom_nav_bar_third'),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: AppLocalizations.of(context)
                  .translate('bottom_nav_bar_fifth'),
            ),
          ],
        );
      },
    );
  }
}
