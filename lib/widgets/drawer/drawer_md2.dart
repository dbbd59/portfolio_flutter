import 'package:flutter/material.dart';
import 'package:portfolio/pages/blank_page.dart';
import 'package:portfolio/pages/news_page.dart';
import 'package:portfolio/pages/profile_page.dart';
import 'package:portfolio/providers/bloc.dart';
import 'package:portfolio/providers/navigation_provider.dart';
import 'package:portfolio/stores/news_store/news_store.dart';
import 'package:portfolio/widgets/drawer/drawer_header_md2.dart';
import 'package:portfolio/widgets/drawer/drawer_list_tile_md2.dart';
import 'package:provider/provider.dart';

class DrawlerMaterialDesign2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NavigationProvider np = Provider.of<NavigationProvider>(context);
    NewsStore newsStore = Provider.of<Bloc>(context).newsStore;

    return SafeArea(
      top: true,
      child: Drawer(
        child: Column(
          children: <Widget>[
            HeaderDrawerMaterialDesign2(
              onTap: () {},
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
                    text: "Profile",
                    onTap: () {
                      np.setCurrentWidget(ProfilePage());
                      np.setCurrentIndex(0);
                    },
                    active: np.currentIndex == 0,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.folder_shared,
                    text: "News",
                    onTap: () {
                      np.setCurrentWidget(NewsPage(
                        newsStore: newsStore,
                      ));
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
              text: "version 0.1",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
