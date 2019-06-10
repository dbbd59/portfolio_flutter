import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/providers/bloc.dart';
import 'package:portfolio/stores/github_trend_store.dart/github_trend_store.dart';
import 'package:portfolio/widgets/cards/card_github_trend/card_github_trend.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/widgets/common/progress_indicator.dart';

class GitHubTrendsPage extends StatefulWidget {
  final GitHubTrendStore gitHubTrendsStore;
  GitHubTrendsPage({@required this.gitHubTrendsStore});
  @override
  _GitHubTrendsPageState createState() => _GitHubTrendsPageState();
}

class _GitHubTrendsPageState extends State<GitHubTrendsPage> {
  @override
  void initState() {
    super.initState();
    widget.gitHubTrendsStore.fetchGitHubTrends();
  }

  @override
  Widget build(BuildContext context) {
    Bloc bloc = Provider.of<Bloc>(context);
    return Container(
      child: RefreshIndicator(
        onRefresh: widget.gitHubTrendsStore.fetchGitHubTrends,
        child: Observer(
          builder: (_) {
            if (widget.gitHubTrendsStore.listGitHubTrends != null) {
              return LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth >= 750 &&
                      constraints.maxWidth < 1100)
                    return buildGridView(
                      bloc: bloc,
                      gridNumber: 3,
                    );
                  if (constraints.maxWidth >= 1100)
                    return buildGridView(
                      bloc: bloc,
                      gridNumber: 4,
                    );
                  return buildListView(bloc: bloc);
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

  ListView buildListView({Bloc bloc}) {
    return ListView.builder(
      itemCount: widget.gitHubTrendsStore.listGitHubTrends.length,
      itemBuilder: (BuildContext ctxt, int index) {
        return CardGitHubTrend(
          currentPeriodStars: widget
              .gitHubTrendsStore.listGitHubTrends[index].currentPeriodStars,
          author: widget.gitHubTrendsStore.listGitHubTrends[index].author,
          languageName:
              widget.gitHubTrendsStore.listGitHubTrends[index].language,
          stars: widget.gitHubTrendsStore.listGitHubTrends[index].stars,
          forks: widget.gitHubTrendsStore.listGitHubTrends[index].forks,
          borderColor:
              widget.gitHubTrendsStore.listGitHubTrends[index].languageColor !=
                      null
                  ? bloc.getColorHexFromStr(widget
                      .gitHubTrendsStore.listGitHubTrends[index].languageColor)
                  : 0x00000000,
          horizontal: true,
          onTap: () {
            bloc.launchURL(
                url: widget.gitHubTrendsStore.listGitHubTrends[index].url);
          },
          title: widget.gitHubTrendsStore.listGitHubTrends[index].name,
          imageNetwork: widget.gitHubTrendsStore.listGitHubTrends[index].builtBy
                      .length >
                  0
              ? widget.gitHubTrendsStore?.listGitHubTrends[index]?.builtBy[0]
                  ?.avatar
              : "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png",
          subTitle:
              widget.gitHubTrendsStore.listGitHubTrends[index].description,
        );
      },
    );
  }

  GridView buildGridView({Bloc bloc, int gridNumber}) {
    return GridView.count(
      primary: true,
      crossAxisCount: gridNumber,
      children: List.generate(
        widget.gitHubTrendsStore.listGitHubTrends.length,
        (index) {
          return CardGitHubTrend(
            currentPeriodStars: widget
                .gitHubTrendsStore.listGitHubTrends[index].currentPeriodStars,
            author: widget.gitHubTrendsStore.listGitHubTrends[index].author,
            languageName:
                widget.gitHubTrendsStore.listGitHubTrends[index].language,
            stars: widget.gitHubTrendsStore.listGitHubTrends[index].stars,
            forks: widget.gitHubTrendsStore.listGitHubTrends[index].forks,
            borderColor: widget.gitHubTrendsStore.listGitHubTrends[index]
                        .languageColor !=
                    null
                ? bloc.getColorHexFromStr(widget
                    .gitHubTrendsStore.listGitHubTrends[index].languageColor)
                : 0x00000000,
            horizontal: false,
            onTap: () {
              bloc.launchURL(
                  url: widget.gitHubTrendsStore.listGitHubTrends[index].url);
            },
            title: widget.gitHubTrendsStore.listGitHubTrends[index].name,
            imageNetwork: widget.gitHubTrendsStore.listGitHubTrends[index]
                        .builtBy.length >
                    0
                ? widget.gitHubTrendsStore?.listGitHubTrends[index]?.builtBy[0]
                    ?.avatar
                : null,
            subTitle:
                widget.gitHubTrendsStore.listGitHubTrends[index].description,
          );
        },
      ),
    );
  }
}
