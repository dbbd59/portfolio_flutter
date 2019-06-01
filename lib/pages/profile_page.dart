import 'package:flutter/material.dart';
import 'package:portfolio/widgets/diagonal.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      backgroundImage: NetworkImage(
                          "https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/50/2013/04/GettyImages-935602860-e1526047614270-464x620.jpg"),
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
                        "  Sandra Adams  ",
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
                    height: 25,
                  ),
                  Text(
                    "sandra_a88@gmail.com",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Sandra Adams",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "sandra_a88@gmail.com",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Sandra Adams",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "sandra_a88@gmail.com",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Sandra Adams",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "sandra_a88@gmail.com",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Sandra Adams",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "sandra_a88@gmail.com",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Sandra Adams",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "sandra_a88@gmail.com",
                    style: TextStyle(
                      fontSize: 16.0,
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
  }
}
