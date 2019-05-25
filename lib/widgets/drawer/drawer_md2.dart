
import 'package:flutter/material.dart';
import 'package:portfolio/pages/profile_page.dart';
import 'package:portfolio/widgets/drawer/drawer_header_md2.dart';
import 'package:portfolio/widgets/drawer/drawer_list_tile_md2.dart';

class DrawlerMaterialDesign2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Drawer(
        child: Column(
          children: <Widget>[
            HeaderDrawerMaterialDesign2(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              //imageAsset: "assets/oltresempionelogo.png",
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
                    text: "My Files",
                    onTap: () {},
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.people,
                    text: "Shared with me",
                    onTap: () {},
                    active: true,
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.star,
                    text: "Starred",
                    onTap: () {},
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.history,
                    text: "Recent",
                    onTap: () {},
                  ),
                  Divider(),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.offline_bolt,
                    text: "Offline",
                    onTap: () {},
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.file_upload,
                    text: "Uploads",
                    onTap: () {},
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.backup,
                    text: "Backups",
                    onTap: () {},
                  ),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.delete,
                    text: "Trash",
                    onTap: () {},
                  ),
                  Divider(),
                  ListTileDrawerMaterialDesign2(
                    icon: Icons.settings,
                    text: "Settings & account",
                    onTap: () {},
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
