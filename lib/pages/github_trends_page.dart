import 'package:flutter_web/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/providers/utilities_provider.dart';
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
    UtilitiesProvider utility = Provider.of<UtilitiesProvider>(context);
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
                  ? utility.getColorHexFromStr(widget
                      .gitHubTrendsStore.listGitHubTrends[index].languageColor)
                  : 0x00000000,
          horizontal: true,
          onTap: () {
            utility.launchURL(
              url: widget.gitHubTrendsStore.listGitHubTrends[index].url,
              name: widget.gitHubTrendsStore.listGitHubTrends[index].name,
            );
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

  GridView buildGridView({UtilitiesProvider utility, int gridNumber}) {
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
                ? utility.getColorHexFromStr(widget
                    .gitHubTrendsStore.listGitHubTrends[index].languageColor)
                : 0x00000000,
            horizontal: false,
            onTap: () {
              utility.launchURL(
                url: widget.gitHubTrendsStore.listGitHubTrends[index].url,
                name: widget.gitHubTrendsStore.listGitHubTrends[index].name,
              );
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
