import 'package:flutter/material.dart';
import 'package:portfolio/models/news.dart';
import 'package:portfolio/providers/bloc.dart';
import 'package:portfolio/widgets/cards/card_horizontal/card_horizontal_md2.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    News news = Provider.of<Bloc>(context).news;
    return Container(
        child: news != null
            ? LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600 && constraints.maxWidth <= 750)
                    return GridView.count(
                      primary: true,
                      crossAxisCount: 2,
                      children: List.generate(news.articles.length, (index) {
                        return CardMaterialDesign2(
                          vertical: false,
                          onTap: () {},
                          title: news.articles[index].title,
                          imageNetwork: news.articles[index].urlToImage,
                          subTitle: news.articles[index].description,
                        );
                      }),
                    );
                  if (constraints.maxWidth >= 750 &&
                      constraints.maxWidth < 1100)
                    return GridView.count(
                      primary: true,
                      crossAxisCount: 3,
                      children: List.generate(news.articles.length, (index) {
                        return CardMaterialDesign2(
                          vertical: false,
                          onTap: () {},
                          title: news.articles[index].title,
                          imageNetwork: news.articles[index].urlToImage,
                          subTitle: news.articles[index].description,
                        );
                      }),
                    );
                  if (constraints.maxWidth >= 1100)
                    return GridView.count(
                      primary: true,
                      crossAxisCount: 4,
                      children: List.generate(news.articles.length, (index) {
                        return CardMaterialDesign2(
                          vertical: false,
                          onTap: () {},
                          title: news.articles[index].title,
                          imageNetwork: news.articles[index].urlToImage,
                          subTitle: news.articles[index].description,
                        );
                      }),
                    );
                  return ListView.builder(
                      itemCount: news.articles.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return CardMaterialDesign2(
                          vertical: true,
                          onTap: () {},
                          title: news.articles[index].title,
                          imageNetwork: news.articles[index].urlToImage,
                          subTitle: news.articles[index].description,
                        );
                      });
                },
              )
            : CircularProgressIndicator());
  }
}
