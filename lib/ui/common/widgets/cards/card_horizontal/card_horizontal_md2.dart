// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class CardMaterialDesign2 extends StatelessWidget {
  CardMaterialDesign2({
    Key key,
    @required this.title,
    @required this.onTap,
    @required this.vertical,
    this.subTitle,
    this.imageNetwork,
    this.imageAsset,
  }) : super(key: key);

  final String imageAsset;
  final String imageNetwork;
  final Function onTap;
  final String subTitle;
  final String title;
  final bool vertical;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 164,
          child: vertical
              ? Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageNetwork != null
                                ? NetworkImage(imageNetwork)
                                : const NetworkImage(
                                    'https://d28fs0o8ewdlxv.cloudfront.net/compare-assets/placeholders/news-placeholder-a0aa1349678d0b4fa44b774efba2bb68.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title ?? 'Title',
                              maxLines: 3,
                              style: const TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Flexible(
                              child: Text(
                                subTitle ?? 'Title',
                                style: const TextStyle(
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
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageNetwork != null
                                ? NetworkImage(imageNetwork)
                                : const NetworkImage(
                                    'https://d28fs0o8ewdlxv.cloudfront.net/compare-assets/placeholders/news-placeholder-a0aa1349678d0b4fa44b774efba2bb68.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title ?? '',
                              style: const TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Flexible(
                              child: Text(
                                subTitle ?? '',
                                style: const TextStyle(
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
