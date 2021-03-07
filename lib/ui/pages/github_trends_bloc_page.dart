// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/bloc/gh_trend/github_trend_bloc.dart';
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/model/github_trend.dart';
import 'package:portfolio_flutter/repository/utility/i_utility_repository.dart';
import 'package:portfolio_flutter/ui/common/widgets/cards/card_github_trend/card_github_trend.dart';
import 'package:portfolio_flutter/ui/common/widgets/common/progress_indicator.dart';

class GitHubTrendsPage extends StatelessWidget {
  const GitHubTrendsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GithubTrendBloc>(
      create: (context) => getIt<GithubTrendBloc>()
        ..add(
          const GithubTrendEvent.fetchTrends(),
        ),
      child: const GitHubTrendsBody(),
    );
  }
}

class GitHubTrendsBody extends StatelessWidget {
  const GitHubTrendsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<GithubTrendBloc>(context),
      builder: (_, GithubTrendState state) {
        return state.map(
          empty: (_) => Container(),
          loaded: (state) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= 750 && constraints.maxWidth < 1100) {
                return buildGridView(
                    gridNumber: 2, listGitHubTrends: state.gitHubTrends);
              }
              if (constraints.maxWidth >= 1100) {
                return buildGridView(
                    gridNumber: 3, listGitHubTrends: state.gitHubTrends);
              }
              return buildListView(listGitHubTrends: state.gitHubTrends);
            },
          ),
          loading: (_) => const ProgressIndicatorCustom(),
          error: (_) => const ProgressIndicatorCustom(),
        );
      },
    );
  }

  ListView buildListView({required List<GitHubTrend>? listGitHubTrends}) {
    return ListView.builder(
      itemCount: listGitHubTrends!.length,
      itemBuilder: (BuildContext ctxt, int index) {
        return CardGitHubTrend(
          currentPeriodStars: listGitHubTrends[index].currentPeriodStars,
          author: listGitHubTrends[index].author,
          languageName: listGitHubTrends[index].language,
          stars: listGitHubTrends[index].stars,
          forks: listGitHubTrends[index].forks,
          borderColor: listGitHubTrends[index].languageColor != null
              ? getIt<IUtilityRepository>()
                  .getColorHexFromStr(listGitHubTrends[index].languageColor)
              : 0x00000000,
          horizontal: true,
          onTap: () {
            getIt<IUtilityRepository>()
                .launchURL(url: listGitHubTrends[index].url);
          },
          title: listGitHubTrends[index].name,
          imageNetwork: listGitHubTrends[index].builtBy!.isNotEmpty
              ? listGitHubTrends[index].builtBy![0].avatar
              : 'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png',
          subTitle: listGitHubTrends[index].description,
        );
      },
    );
  }

  GridView buildGridView(
      {required int gridNumber, required List<GitHubTrend>? listGitHubTrends}) {
    return GridView.count(
      primary: true,
      crossAxisCount: gridNumber,
      children: List.generate(
        listGitHubTrends!.length,
        (index) {
          return CardGitHubTrend(
            currentPeriodStars: listGitHubTrends[index].currentPeriodStars,
            author: listGitHubTrends[index].author,
            languageName: listGitHubTrends[index].language,
            stars: listGitHubTrends[index].stars,
            forks: listGitHubTrends[index].forks,
            borderColor: listGitHubTrends[index].languageColor != null
                ? getIt<IUtilityRepository>()
                    .getColorHexFromStr(listGitHubTrends[index].languageColor)
                : 0x00000000,
            horizontal: false,
            onTap: () {
              getIt<IUtilityRepository>()
                  .launchURL(url: listGitHubTrends[index].url);
            },
            title: listGitHubTrends[index].name,
            imageNetwork: listGitHubTrends[index].builtBy!.isNotEmpty
                ? listGitHubTrends[index].builtBy![0].avatar
                : null,
            subTitle: listGitHubTrends[index].description,
          );
        },
      ),
    );
  }
}
