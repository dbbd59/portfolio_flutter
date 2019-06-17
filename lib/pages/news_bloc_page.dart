import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bloc/news_bloc.dart';
import 'package:portfolio/bloc/news_event.dart';
import 'package:portfolio/bloc/news_state.dart';
import 'package:portfolio/models/news.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:portfolio/widgets/cards/card_horizontal/card_horizontal_md2.dart';
import 'package:portfolio/widgets/common/progress_indicator.dart';
import 'package:provider/provider.dart';

class NewsPageBloc extends StatefulWidget {
  @override
  _NewsPageBlocState createState() => _NewsPageBlocState();
}

class _NewsPageBlocState extends State<NewsPageBloc> {
  NewsBloc newsBloc;

  @override
  void initState() {
    super.initState();
    newsBloc = BlocProvider.of<NewsBloc>(context);
    newsBloc.dispatch(FetchNews());
  }

  @override
  Widget build(BuildContext context) {
    UtilitiesProvider utility = Provider.of<UtilitiesProvider>(context);
    return Container(
      child: BlocBuilder(
        bloc: newsBloc,
        builder: (_, NewsState state) {
          if (state is NewsEmpty) {
            return Container();
          }
          if (state is NewsLoading) {
            return Center(
              child: ProgressIndicatorCustom(),
            );
          }
          if (state is NewsLoaded) {
            News news = state.news;
            return LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600 && constraints.maxWidth <= 750)
                  return buildGridView(
                    utility: utility,
                    gridNumber: 2,
                    news: news,
                  );
                if (constraints.maxWidth >= 750 && constraints.maxWidth < 1100)
                  return buildGridView(
                    utility: utility,
                    gridNumber: 3,
                    news: news,
                  );
                if (constraints.maxWidth >= 1100)
                  return buildGridView(
                    utility: utility,
                    gridNumber: 4,
                    news: news,
                  );
                return buildListView(
                  utility: utility,
                  news: news,
                );
              },
            );
          }
          if (state is NewsError) {
            return Text(
              'Something went wrong!',
              style: TextStyle(color: Colors.red),
            );
          }
          return Container();
          /*            if (widget.newsStore.news != null) {
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
          } */
        },
      ),
    );
  }

  ListView buildListView({UtilitiesProvider utility, News news}) {
    return ListView.builder(
      itemCount: news.articles.length,
      itemBuilder: (BuildContext ctxt, int index) {
        return CardMaterialDesign2(
          vertical: true,
          onTap: () {
            utility.launchURL(url: news.articles[index].url);
          },
          title: news.articles[index].title,
          imageNetwork: news.articles[index].urlToImage,
          subTitle: news.articles[index].description,
        );
      },
    );
  }

  GridView buildGridView(
      {UtilitiesProvider utility, int gridNumber, News news}) {
    return GridView.count(
      primary: true,
      crossAxisCount: gridNumber,
      children: List.generate(
        news.articles.length,
        (index) {
          return CardMaterialDesign2(
            vertical: false,
            onTap: () {
              utility.launchURL(url: news.articles[index].url);
            },
            title: news.articles[index].title,
            imageNetwork: news.articles[index].urlToImage,
            subTitle: news.articles[index].description,
          );
        },
      ),
    );
  }
}
