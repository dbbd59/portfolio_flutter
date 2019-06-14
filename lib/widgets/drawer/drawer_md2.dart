import 'package:flutter/material.dart';
import 'package:portfolio/pages/blank_page.dart';
import 'package:portfolio/pages/github_trends_page.dart';
import 'package:portfolio/pages/news_page.dart';
import 'package:portfolio/pages/profile_page.dart';
import 'package:portfolio/pages/welcome_page.dart';
import 'package:portfolio/providers/navigation_provider.dart';
import 'package:portfolio/providers/state_provider.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/stores/github_trend_store.dart/github_trend_store.dart';
import 'package:portfolio/stores/news_store/news_store.dart';
import 'package:portfolio/widgets/drawer/drawer_header_md2.dart';
import 'package:portfolio/widgets/drawer/drawer_list_tile_md2.dart';
import 'package:provider/provider.dart';

class DrawlerMaterialDesign2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NavigationProvider np = Provider.of<NavigationProvider>(context);
    NewsStore newsStore = Provider.of<NewsStore>(context);
    GitHubTrendStore gitHubTrendsStore = Provider.of<GitHubTrendStore>(context);
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    StateProvider stateProvider = Provider.of<StateProvider>(context);

    return SafeArea(
      top: true,
      child: Drawer(
        child: Column(
          children: <Widget>[
            if (stateProvider.loggedIn)
              HeaderDrawerMaterialDesign2(
                onTap: () {
                  np.setCurrentWidget(WelocmePage());
                  np.setCurrentIndex(-1);
                },
                imageNetwork:
                    "https://scontent-cdg2-1.cdninstagram.com/vp/89dde4d5b5c8dae27794012b37a281b3/5D798DBD/t51.2885-19/s320x320/58453660_411757989373588_4475648126237016064_n.jpg?_nc_ht=scontent-cdg2-1.cdninstagram.com",
                subTitle: "davide.bolzoni59@gmail.com",
                title: "Davide Bolzoni",
              ),
            Flexible(
              child: ListView(
                children: <Widget>[
                  Divider(),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.person,
                    text: "About me",
                    onTap: () {
                      np.setCurrentWidget(ProfilePage());
                      np.setCurrentIndex(0);
                    },
                    active: np.currentIndex == 0,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.widgets,
                    text: "Technology News",
                    onTap: () {
                      np.setCurrentWidget(
                        NewsPage(
                          newsStore: newsStore,
                        ),
                      );
                      np.setCurrentIndex(1);
                    },
                    active: np.currentIndex == 1,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.star,
                    text: "GitHub Trends",
                    onTap: () {
                      np.setCurrentWidget(
                        GitHubTrendsPage(
                          gitHubTrendsStore: gitHubTrendsStore,
                        ),
                      );
                      np.setCurrentIndex(2);
                    },
                    active: np.currentIndex == 2,
                  ),
                  Divider(),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.settings,
                    text: "Settings & account",
                    onTap: () {
                      np.setCurrentWidget(BlankPage());
                      np.setCurrentIndex(8);
                    },
                    active: np.currentIndex == 8,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.0,
              ),
              child: Row(
                children: <Widget>[
                  Text("Made with"),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    height: 30,
                    width: 50,
                    child: Center(
                      child: Image.asset(
                        'assets/flutter.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("and"),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    height: 30,
                    width: 50,
                    child: Center(
                      child: Image.asset(
                        'assets/dart.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.info_outline),
                    SizedBox(
                      width: 16,
                    ),
                    Text("version 0.1"),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.brightness_7,
                  ),
                  onPressed: () {
                    if (themeProvider.brightnessTheme == Brightness.light) {
                      themeProvider.setBrightness(Brightness.dark);
                    } else {
                      themeProvider.setBrightness(Brightness.light);
                    }
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
