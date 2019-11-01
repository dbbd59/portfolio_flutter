import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bloc/bloc.dart';
import 'package:portfolio/bloc/github_trend_bloc.dart';
import 'package:portfolio/models/github_trend.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:portfolio/widgets/cards/card_github_trend/card_github_trend.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/widgets/common/progress_indicator.dart';

class GitHubTrendsPage extends StatefulWidget {
  @override
  _GitHubTrendsPageState createState() => _GitHubTrendsPageState();
}

class _GitHubTrendsPageState extends State<GitHubTrendsPage> {
  @override
  void didChangeDependencies() {
    BlocProvider.of<GithubTrendBloc>(context).add(FetchGitHubTrends());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    UtilitiesProvider utility = Provider.of<UtilitiesProvider>(context);
    return Container(
      child: BlocBuilder(
        bloc: BlocProvider.of<GithubTrendBloc>(context),
        builder: (_, GithubTrendState state) {
          if (state is GithubTrendLoaded) {
            return LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= 750 && constraints.maxWidth < 1100)
                  return buildGridView(
                      utility: utility,
                      gridNumber: 2,
                      listGitHubTrends: state.listGitHubTrends);
                if (constraints.maxWidth >= 1100)
                  return buildGridView(
                      utility: utility,
                      gridNumber: 3,
                      listGitHubTrends: state.listGitHubTrends);
                return buildListView(
                    utility: utility, listGitHubTrends: state.listGitHubTrends);
              },
            );
          }
          if (state is GithubTrendLoading) {
            return ProgressIndicatorCustom();
          }
          if (state is GithubTrendError) {
            return ProgressIndicatorCustom();
          }
          return Container();
        },
      ),
    );
  }

  ListView buildListView(
      {UtilitiesProvider utility, List<GitHubTrend> listGitHubTrends}) {
    return ListView.builder(
      itemCount: listGitHubTrends.length,
      itemBuilder: (BuildContext ctxt, int index) {
        return CardGitHubTrend(
          currentPeriodStars: listGitHubTrends[index].currentPeriodStars,
          author: listGitHubTrends[index].author,
          languageName: listGitHubTrends[index].language,
          stars: listGitHubTrends[index].stars,
          forks: listGitHubTrends[index].forks,
          borderColor: listGitHubTrends[index].languageColor != null
              ? utility
                  .getColorHexFromStr(listGitHubTrends[index].languageColor)
              : 0x00000000,
          horizontal: true,
          onTap: () {
            utility.launchURL(url: listGitHubTrends[index].url);
          },
          title: listGitHubTrends[index].name,
          imageNetwork: listGitHubTrends[index].builtBy.length > 0
              ? listGitHubTrends[index]?.builtBy[0]?.avatar
              : "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png",
          subTitle: listGitHubTrends[index].description,
        );
      },
    );
  }

  GridView buildGridView(
      {UtilitiesProvider utility,
      int gridNumber,
      List<GitHubTrend> listGitHubTrends}) {
    return GridView.count(
      primary: true,
      crossAxisCount: gridNumber,
      children: List.generate(
        listGitHubTrends.length,
        (index) {
          return CardGitHubTrend(
            currentPeriodStars: listGitHubTrends[index].currentPeriodStars,
            author: listGitHubTrends[index].author,
            languageName: listGitHubTrends[index].language,
            stars: listGitHubTrends[index].stars,
            forks: listGitHubTrends[index].forks,
            borderColor: listGitHubTrends[index].languageColor != null
                ? utility
                    .getColorHexFromStr(listGitHubTrends[index].languageColor)
                : 0x00000000,
            horizontal: false,
            onTap: () {
              utility.launchURL(url: listGitHubTrends[index].url);
            },
            title: listGitHubTrends[index].name,
            imageNetwork: listGitHubTrends[index].builtBy.length > 0
                ? listGitHubTrends[index]?.builtBy[0]?.avatar
                : null,
            subTitle: listGitHubTrends[index].description,
          );
        },
      ),
    );
  }
}
