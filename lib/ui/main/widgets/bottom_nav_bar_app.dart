import 'package:baseapp/helpers/app_localizations.dart';
import 'package:baseapp/bloc/bottomappbar/bottomappbar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:baseapp/models/enums/navigation_page_enum.dart';

class BottomNavBarApp extends StatelessWidget {
  const BottomNavBarApp();

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
              icon: Icon(Icons.home),
              title: Text(
                AppLocalizations.of(context).translate('bottom_nav_bar_first'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text(
                AppLocalizations.of(context).translate('bottom_nav_bar_second'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flare),
              title: Text(
                AppLocalizations.of(context).translate('bottom_nav_bar_third'),
              ),
            ),
          ],
        );
      },
    );
  }
}
