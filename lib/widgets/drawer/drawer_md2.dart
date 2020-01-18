import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_me_page.dart';
import 'package:portfolio/pages/chuck_norris_page.dart';
import 'package:portfolio/pages/github_trends_bloc_page.dart';
import 'package:portfolio/pages/news_bloc_page.dart';
import 'package:portfolio/pages/welcome_page.dart';
import 'package:portfolio/providers/navigation_provider.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:portfolio/widgets/drawer/drawer_header_md2.dart';
import 'package:portfolio/widgets/drawer/drawer_list_tile_md2.dart';
import 'package:provider/provider.dart';

class DrawlerMaterialDesign2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NavigationProvider np = Provider.of<NavigationProvider>(context);
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    UtilitiesProvider utility = Provider.of<UtilitiesProvider>(context);

    return SafeArea(
      top: true,
      child: Drawer(
        elevation: 0,
        child: Column(
          children: <Widget>[
            HeaderDrawerMaterialDesign2(
              onTap: () {
                Navigator.of(context).maybePop();
                np.setCurrentWidget(WelcomePage());
                np.setCurrentIndex(-1);
              },
              imageAsset: "assets/profilepic.jpg",
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
                      Navigator.of(context).maybePop();
                      np.setCurrentWidget(AboutMePage());
                      np.setCurrentIndex(0);
                    },
                    active: np.currentIndex == 0,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.star,
                    text: "GitHub Trends",
                    onTap: () {
                      Navigator.of(context).maybePop();
                      np.setCurrentWidget(
                        GitHubTrendsPage(),
                      );
                      np.setCurrentIndex(2);
                    },
                    active: np.currentIndex == 2,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.widgets,
                    text: "Technology News",
                    onTap: () {
                      Navigator.of(context).maybePop();
                      np.setCurrentWidget(
                        NewsPage(),
                      );
                      np.setCurrentIndex(1);
                    },
                    active: np.currentIndex == 1,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.gesture,
                    text: "Chuck Norris Fact",
                    onTap: () {
                      Navigator.of(context).maybePop();
                      np.setCurrentWidget(
                        ChuckNorrisPage(),
                      );
                      np.setCurrentIndex(3);
                    },
                    active: np.currentIndex == 3,
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
                      child: FlutterLogo(),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    utility.launchURL(
                      url:
                          "https://github.com/dbbd59/portfolio_flutter_multiplatform" ??
                              "",
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.code),
                      SizedBox(
                        width: 16,
                      ),
                      Text("Source Code"),
                    ],
                  ),
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
