import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:provider/provider.dart';

class WelcomeLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UtilitiesProvider utility = Provider.of<UtilitiesProvider>(context);

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                      "https://scontent-cdg2-1.cdninstagram.com/vp/89dde4d5b5c8dae27794012b37a281b3/5D798DBD/t51.2885-19/s320x320/58453660_411757989373588_4475648126237016064_n.jpg?_nc_ht=scontent-cdg2-1.cdninstagram.com"),
                  radius: MediaQuery.of(context).size.width * 0.20,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Ciao! il mio nome è",
                          textScaleFactor: 1,
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Davide\nBolzoni",
                          textScaleFactor: 1,
                          style: TextStyle(
                            fontSize: 46.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Sono un Mobile Developer con la passione per la tecnologia. Ora mi occupo di sviluppo in Flutter.",
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        OutlineButton(
                          onPressed: () {},
                          child: Text(
                            "Cv",
                            style: TextStyle(),
                          ),
                          splashColor: Theme.of(context).primaryColor,
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        OutlineButton(
                          onPressed: () {
                            utility.launchURL(
                                url: "mailto:davide.bolzoni59@gmail.com");
                          },
                          child: Text(
                            "Salutami!",
                            style: TextStyle(),
                          ),
                          splashColor: Theme.of(context).primaryColor,
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
