import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:portfolio/widgets/common/diagonal.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool pswOk = false;
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (pswOk)
      return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                DiagonallyCutColoredImage(
                  Image.asset(
                    'assets/wallpaperprofile.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    fit: BoxFit.cover,
                  ),
                  color: Theme.of(context).primaryColor.withOpacity(0.70),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            "https://scontent-cdg2-1.cdninstagram.com/vp/89dde4d5b5c8dae27794012b37a281b3/5D798DBD/t51.2885-19/s320x320/58453660_411757989373588_4475648126237016064_n.jpg?_nc_ht=scontent-cdg2-1.cdninstagram.com"),
                        radius: 75.0,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        child: Text(
                          "  Davide Bolzoni  ",
                          style: TextStyle(
                            fontSize: 36.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "davide.bolzoni59@gmail.com",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Sandra Adams",
                      style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    else
      return Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 2.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  hintText: 'Insert the Code to unlock...',
                  alignLabelWithHint: true,
                ),
              ),
              OutlineButton(
                onPressed: () {
                  if (myController.text == "dbbd59") {
                    setState(() {
                      pswOk = true;
                    });
                  } else {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Nope!'),
                      ),
                    );
                  }
                },
                child: Text("Unlock"),
                splashColor: Theme.of(context).primaryColor,
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      );
  }
}
