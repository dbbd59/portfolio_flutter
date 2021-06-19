// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/core.dart';
import 'package:portfolio_flutter/feature/common/widgets/cards/card_github_trend/card_github_trend.dart';
import 'package:portfolio_flutter/feature/common/widgets/common/progress_indicator.dart';
import 'package:portfolio_flutter/feature/gh_trend/bloc/github_trend_bloc.dart';
import 'package:portfolio_flutter/model/github_trend.dart';
import 'package:portfolio_flutter/utils/utility/utility_repository.dart';

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
              ? _getColorHexFromStr(listGitHubTrends[index].languageColor)
              : 0x00000000,
          horizontal: true,
          onTap: () {
            getIt<UtilityRepository>()
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
                ? _getColorHexFromStr(listGitHubTrends[index].languageColor)
                : 0x00000000,
            horizontal: false,
            onTap: () {
              getIt<UtilityRepository>()
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

  int _getColorHexFromStr(String? colorStr) {
    colorStr = 'FF$colorStr';
    colorStr = colorStr.replaceAll('#', '');
    var val = 0;
    final len = colorStr.length;
    for (var i = 0; i < len; i++) {
      final hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw const FormatException(
            'An error occurred when converting a color');
      }
    }
    return val;
  }
}
