import 'package:baseapp/bloc/news/news_bloc.dart';
import 'package:baseapp/models/news.dart';
import 'package:baseapp/repositories/utility/utility_repository.dart';
import 'package:baseapp/shared/injection_container.dart';
import 'package:baseapp/ui/common/widgets/cards/card_horizontal/card_horizontal_md2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsBloc>(
      create: (context) => getIt<NewsBloc>()
        ..add(
          FetchNews(),
        ),
      child: NewsBody(),
    );
  }
}

class NewsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder(
        bloc: BlocProvider.of<NewsBloc>(context),
        builder: (_, NewsState state) {
          if (state is NewsEmpty) {
            return Container();
          }
          if (state is NewsLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is NewsLoaded) {
            News news = state.news;
            return LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600 && constraints.maxWidth <= 750)
                  return buildGridView(
                    gridNumber: 2,
                    news: news,
                  );
                if (constraints.maxWidth >= 750 && constraints.maxWidth < 1100)
                  return buildGridView(
                    gridNumber: 3,
                    news: news,
                  );
                if (constraints.maxWidth >= 1100)
                  return buildGridView(
                    gridNumber: 4,
                    news: news,
                  );
                return buildListView(
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
        },
      ),
    );
  }

  ListView buildListView({News news}) {
    return ListView.builder(
      itemCount: news.articles.length,
      itemBuilder: (BuildContext ctxt, int index) {
        return CardMaterialDesign2(
          vertical: true,
          onTap: () {
            getIt<UtilityRepository>().launchURL(url: news.articles[index].url);
          },
          title: news.articles[index].title,
          imageNetwork: news.articles[index].urlToImage,
          subTitle: news.articles[index].description,
        );
      },
    );
  }

  GridView buildGridView({int gridNumber, News news}) {
    return GridView.count(
      primary: true,
      crossAxisCount: gridNumber,
      children: List.generate(
        news.articles.length,
        (index) {
          return CardMaterialDesign2(
            vertical: false,
            onTap: () {
              getIt<UtilityRepository>()
                  .launchURL(url: news.articles[index].url);
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
