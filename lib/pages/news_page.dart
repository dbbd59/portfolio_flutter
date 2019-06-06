import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/stores/news_store/news_store.dart';
import 'package:portfolio/widgets/cards/card_horizontal/card_horizontal_md2.dart';

class NewsPage extends StatefulWidget {
  final NewsStore newsStore;
  NewsPage({@required this.newsStore});
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    super.initState();
    widget.newsStore.fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        onRefresh: widget.newsStore.fetchNews,
        child: Observer(
          builder: (_) {
            return widget.newsStore.news != null
                ? LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 600 &&
                          constraints.maxWidth <= 750)
                        return GridView.count(
                          primary: true,
                          crossAxisCount: 2,
                          children: List.generate(
                            widget.newsStore.news.articles.length,
                            (index) {
                              return CardMaterialDesign2(
                                vertical: false,
                                onTap: () {},
                                title:
                                    widget.newsStore.news.articles[index].title,
                                imageNetwork: widget
                                    .newsStore.news.articles[index].urlToImage,
                                subTitle: widget
                                    .newsStore.news.articles[index].description,
                              );
                            },
                          ),
                        );
                      if (constraints.maxWidth >= 750 &&
                          constraints.maxWidth < 1100)
                        return GridView.count(
                          primary: true,
                          crossAxisCount: 3,
                          children: List.generate(
                            widget.newsStore.news.articles.length,
                            (index) {
                              return CardMaterialDesign2(
                                vertical: false,
                                onTap: () {},
                                title:
                                    widget.newsStore.news.articles[index].title,
                                imageNetwork: widget
                                    .newsStore.news.articles[index].urlToImage,
                                subTitle: widget
                                    .newsStore.news.articles[index].description,
                              );
                            },
                          ),
                        );
                      if (constraints.maxWidth >= 1100)
                        return GridView.count(
                          primary: true,
                          crossAxisCount: 4,
                          children: List.generate(
                            widget.newsStore.news.articles.length,
                            (index) {
                              return CardMaterialDesign2(
                                vertical: false,
                                onTap: () {},
                                title:
                                    widget.newsStore.news.articles[index].title,
                                imageNetwork: widget
                                    .newsStore.news.articles[index].urlToImage,
                                subTitle: widget
                                    .newsStore.news.articles[index].description,
                              );
                            },
                          ),
                        );
                      return ListView.builder(
                        itemCount: widget.newsStore.news.articles.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return CardMaterialDesign2(
                            vertical: true,
                            onTap: () {},
                            title: widget.newsStore.news.articles[index].title,
                            imageNetwork:
                                widget.newsStore.news.articles[index].urlToImage,
                            subTitle: widget
                                .newsStore.news.articles[index].description,
                          );
                        },
                      );
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}
