import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:portfolio/stores/news_store/news_store.dart';
import 'package:portfolio/widgets/cards/card_horizontal/card_horizontal_md2.dart';
import 'package:portfolio/widgets/common/progress_indicator.dart';
import 'package:provider/provider.dart';

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
    UtilitiesProvider utility = Provider.of<UtilitiesProvider>(context);

    return Container(
      child: RefreshIndicator(
        onRefresh: widget.newsStore.fetchNews,
        child: Observer(
          builder: (_) {
            if (widget.newsStore.news != null) {
              return LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600 && constraints.maxWidth <= 750)
                    return buildGridView(
                      utility: utility,
                      gridNumber: 2,
                    );
                  if (constraints.maxWidth >= 750 &&
                      constraints.maxWidth < 1100)
                    return buildGridView(
                      utility: utility,
                      gridNumber: 3,
                    );
                  if (constraints.maxWidth >= 1100)
                    return buildGridView(
                      utility: utility,
                      gridNumber: 4,
                    );
                  return buildListView(utility: utility);
                },
              );
            } else {
              return ProgressIndicatorCustom();
            }
          },
        ),
      ),
    );
  }

  ListView buildListView({UtilitiesProvider utility}) {
    return ListView.builder(
      itemCount: widget.newsStore.news.articles.length,
      itemBuilder: (BuildContext ctxt, int index) {
        return CardMaterialDesign2(
          vertical: true,
          onTap: () {
            utility.launchURL(url: widget.newsStore.news.articles[index].url);
          },
          title: widget.newsStore.news.articles[index].title,
          imageNetwork: widget.newsStore.news.articles[index].urlToImage,
          subTitle: widget.newsStore.news.articles[index].description,
        );
      },
    );
  }

  GridView buildGridView({UtilitiesProvider utility, int gridNumber}) {
    return GridView.count(
      primary: true,
      crossAxisCount: gridNumber,
      children: List.generate(
        widget.newsStore.news.articles.length,
        (index) {
          return CardMaterialDesign2(
            vertical: false,
            onTap: () {
              utility.launchURL(url: widget.newsStore.news.articles[index].url);
            },
            title: widget.newsStore.news.articles[index].title,
            imageNetwork: widget.newsStore.news.articles[index].urlToImage,
            subTitle: widget.newsStore.news.articles[index].description,
          );
        },
      ),
    );
  }
}
