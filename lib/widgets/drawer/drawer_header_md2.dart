import 'package:flutter/material.dart';

class HeaderDrawerMaterialDesign2 extends StatelessWidget {
  final String imageNetwork;
  final String title;
  final String subTitle;
  final String imageAsset;
  final Function onTap;
  HeaderDrawerMaterialDesign2({
    this.imageNetwork,
    @required this.title,
    @required this.subTitle,
    this.imageAsset,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 16.0,
          left: 16.0,
          right: 16.0,
          bottom: 8.0,
        ),
        child: Row(
          children: <Widget>[
            imageNetwork != null
                ? CircleAvatar(
                    backgroundImage: NetworkImage(imageNetwork),
                    backgroundColor: Theme.of(context).primaryColor,
                  )
                : imageAsset != null
                    ? CircleAvatar(
                        backgroundImage: AssetImage(imageAsset),
                        backgroundColor: Theme.of(context).primaryColor,
                      )
                    : Container(),
            SizedBox(
              width: 8.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(fontSize: 13.0, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
