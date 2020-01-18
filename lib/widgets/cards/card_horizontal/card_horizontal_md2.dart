import 'package:flutter/material.dart';

class CardMaterialDesign2 extends StatelessWidget {
  final Function onTap;
  final String imageNetwork;
  final String imageAsset;
  final String title;
  final String subTitle;
  final bool vertical;
  CardMaterialDesign2({
    @required this.title,
    @required this.onTap,
    @required this.vertical,
    this.subTitle,
    this.imageNetwork,
    this.imageAsset,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 1,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 164,
          child: vertical
              ? Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.center,
                            image: imageNetwork != null
                                ? NetworkImage(imageNetwork)
                                : NetworkImage(
                                    "https://d28fs0o8ewdlxv.cloudfront.net/compare-assets/placeholders/news-placeholder-a0aa1349678d0b4fa44b774efba2bb68.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title != null ? title : "Title",
                              maxLines: 3,
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Flexible(
                              child: Text(
                                subTitle != null ? subTitle : "Title",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.center,
                            image: imageNetwork != null
                                ? NetworkImage(imageNetwork)
                                : NetworkImage(
                                    "https://d28fs0o8ewdlxv.cloudfront.net/compare-assets/placeholders/news-placeholder-a0aa1349678d0b4fa44b774efba2bb68.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title != null ? title : "",
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Flexible(
                              child: Text(
                                subTitle != null ? subTitle : "",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}