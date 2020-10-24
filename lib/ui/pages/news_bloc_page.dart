// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/bloc/news/news_bloc.dart';
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/model/news.dart';
import 'package:portfolio_flutter/repository/utility/i_utility_repository.dart';
import 'package:portfolio_flutter/ui/common/widgets/cards/card_horizontal/card_horizontal_md2.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsBloc>(
      create: (context) => getIt<NewsBloc>()
        ..add(
          NewsEvent.fetchNews(),
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
        cubit: BlocProvider.of<NewsBloc>(context),
        builder: (_, NewsState state) {
          return state.map(
            empty: (_) => Container(),
            loaded: (state) => LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600 && constraints.maxWidth <= 750)
                  return buildGridView(
                    gridNumber: 2,
                    news: state.news,
                  );
                if (constraints.maxWidth >= 750 && constraints.maxWidth < 1100)
                  return buildGridView(
                    gridNumber: 3,
                    news: state.news,
                  );
                if (constraints.maxWidth >= 1100)
                  return buildGridView(
                    gridNumber: 4,
                    news: state.news,
                  );
                return buildListView(
                  news: state.news,
                );
              },
            ),
            loading: (_) => Center(
              child: CircularProgressIndicator(),
            ),
            error: (_) => Text(
              'Something went wrong!',
              style: TextStyle(color: Colors.red),
            ),
          );
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
            getIt<IUtilityRepository>()
                .launchURL(url: news.articles[index].url);
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
              getIt<IUtilityRepository>()
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
