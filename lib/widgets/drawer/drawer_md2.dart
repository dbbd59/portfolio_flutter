import 'package:flutter/material.dart';
import 'package:portfolio/pages/blank_page.dart';
import 'package:portfolio/pages/news_page.dart';
import 'package:portfolio/pages/profile_page.dart';
import 'package:portfolio/providers/navigation_provider.dart';
import 'package:portfolio/widgets/drawer/drawer_header_md2.dart';
import 'package:portfolio/widgets/drawer/drawer_list_tile_md2.dart';
import 'package:provider/provider.dart';

class DrawlerMaterialDesign2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NavigationProvider np = Provider.of<NavigationProvider>(context);
    return SafeArea(
      top: true,
      child: Drawer(
        child: Column(
          children: <Widget>[
            HeaderDrawerMaterialDesign2(
              onTap: () {},
              imageNetwork:
                  "https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/50/2013/04/GettyImages-935602860-e1526047614270-464x620.jpg",
              subTitle: "sandra_a88@gmail.com",
              title: "Sandra Adams",
            ),
            Flexible(
              child: ListView(
                children: <Widget>[
                  Divider(),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.folder,
                    text: "News",
                    onTap: () {
                      np.setCurrentWidget(NewsPage());
                      np.setCurrentIndex(0);
                    },
                    active: np.currentIndex == 0,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.people,
                    text: "Profile",
                    onTap: () {
                      np.setCurrentWidget(ProfilePage());
                      np.setCurrentIndex(1);
                    },
                    active: np.currentIndex == 1,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.star,
                    text: "Starred",
                    onTap: () {
                      np.setCurrentWidget(BlankPage());
                      np.setCurrentIndex(2);
                    },
                    active: np.currentIndex == 2,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.history,
                    text: "Recent",
                    onTap: () {
                      np.setCurrentWidget(BlankPage());
                      np.setCurrentIndex(3);
                    },
                    active: np.currentIndex == 3,
                  ),
                  Divider(),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.offline_bolt,
                    text: "Offline",
                    onTap: () {
                      np.setCurrentWidget(BlankPage());
                      np.setCurrentIndex(4);
                    },
                    active: np.currentIndex == 4,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.file_upload,
                    text: "Uploads",
                    onTap: () {
                      np.setCurrentWidget(BlankPage());
                      np.setCurrentIndex(5);
                    },
                    active: np.currentIndex == 5,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.backup,
                    text: "Backups",
                    onTap: () {
                      np.setCurrentWidget(BlankPage());
                      np.setCurrentIndex(6);
                    },
                    active: np.currentIndex == 6,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.delete,
                    text: "Trash",
                    onTap: () {
                      np.setCurrentWidget(BlankPage());
                      np.setCurrentIndex(7);
                    },
                    active: np.currentIndex == 7,
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
            ListTileDrawerMaterialDesign2(
              icon: Icons.info_outline,
              text: "version 2.4",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
