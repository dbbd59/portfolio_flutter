// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class CardMaterialDesign2 extends StatelessWidget {
  CardMaterialDesign2({
    Key? key,
    required this.title,
    required this.onTap,
    required this.vertical,
    this.subTitle,
    required this.imageNetwork,
    this.imageAsset,
  }) : super(key: key);

  final String? imageAsset;
  final String? imageNetwork;
  final Function onTap;
  final String? subTitle;
  final String? title;
  final bool vertical;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: InkWell(
        onTap: onTap as void Function()?,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 164,
          child: vertical
              ? Row(
                  children: <Widget>[
                    Expanded(
                      child: imageNetwork != null
                          ? Image.network(
                              imageNetwork!,
                              errorBuilder: (BuildContext context,
                                  Object exception, StackTrace? stackTrace) {
                                return Image.asset(
                                  'assets/images/breaking-news.jpg',
                                  fit: BoxFit.fitWidth,
                                );
                              },
                            )
                          : Image.asset(
                              'assets/images/breaking-news.jpg',
                              fit: BoxFit.fitWidth,
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
                      child: imageNetwork != null
                          ? Image.network(
                              imageNetwork!,
                              errorBuilder: (BuildContext context,
                                  Object exception, StackTrace? stackTrace) {
                                return Image.asset(
                                  'assets/images/breaking-news.jpg',
                                  fit: BoxFit.fitWidth,
                                );
                              },
                            )
                          : Image.asset(
                              'assets/images/breaking-news.jpg',
                              fit: BoxFit.fitWidth,
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
