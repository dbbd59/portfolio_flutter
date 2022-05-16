// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class CardGitHubTrend extends StatelessWidget {
  const CardGitHubTrend({
    required this.title,
    required this.onTap,
    required this.horizontal,
    Key? key,
    this.subTitle,
    this.imageNetwork,
    this.imageAsset,
    this.borderColor,
    this.stars,
    this.forks,
    this.languageName,
    this.author,
    this.currentPeriodStars,
  }) : super(key: key);

  final String? author;
  final int? borderColor;
  final int? currentPeriodStars;
  final int? forks;
  final bool horizontal;
  final String? imageAsset;
  final String? imageNetwork;
  final String? languageName;
  final Function onTap;
  final int? stars;
  final String? subTitle;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: InkWell(
        onTap: onTap as void Function()?,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 164,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Color(borderColor!), width: 5),
              left: BorderSide(color: Color(borderColor!), width: 5),
              top: BorderSide(color: Color(borderColor!), width: 5),
              bottom: BorderSide(color: Color(borderColor!), width: 5),
            ),
          ),
          child: horizontal
              ? Row(
                  children: <Widget>[
                    _CardGitHubContent(
                      title: title,
                      currentPeriodStars: currentPeriodStars,
                      subTitle: subTitle,
                      stars: stars,
                      forks: forks,
                    ),
                    Expanded(
                      child: _CardGitHubImage(
                        horizontal: horizontal,
                        imageNetwork: imageNetwork,
                        languageName: languageName,
                        borderColor: borderColor,
                        author: author,
                      ),
                    ),
                  ],
                )
              : Column(
                  children: <Widget>[
                    Expanded(
                      child: _CardGitHubImage(
                        horizontal: horizontal,
                        imageNetwork: imageNetwork,
                        languageName: languageName,
                        borderColor: borderColor,
                        author: author,
                      ),
                    ),
                    _CardGitHubContent(
                      title: title,
                      currentPeriodStars: currentPeriodStars,
                      subTitle: subTitle,
                      stars: stars,
                      forks: forks,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

class _CardGitHubContent extends StatelessWidget {
  const _CardGitHubContent({
    required this.title,
    required this.currentPeriodStars,
    required this.subTitle,
    required this.stars,
    required this.forks,
    Key? key,
  }) : super(key: key);

  final int? currentPeriodStars;
  final int? forks;
  final int? stars;
  final String? subTitle;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: _CardGitHubTitle(
                title: title,
                currentPeriodStars: currentPeriodStars,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              flex: 3,
              child: _CardGitHubDescr(
                subTitle: subTitle,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: _CardGitHubStarsForks(
                stars: stars,
                forks: forks,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardGitHubImage extends StatelessWidget {
  const _CardGitHubImage({
    required this.imageNetwork,
    required this.languageName,
    required this.borderColor,
    required this.author,
    required this.horizontal,
    Key? key,
  }) : super(key: key);

  final String? author;
  final int? borderColor;
  final bool horizontal;
  final String? imageNetwork;
  final String? languageName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageNetwork != null
                  ? NetworkImage(imageNetwork!)
                  : const NetworkImage(
                      'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png',
                    ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (languageName != null)
          Align(
            alignment: horizontal ? Alignment.topCenter : Alignment.bottomLeft,
            child: Chip(
              backgroundColor: Color(borderColor!),
              label: Text(languageName!),
            ),
          ),
        if (author != null)
          Align(
            alignment:
                horizontal ? Alignment.bottomCenter : Alignment.bottomRight,
            child: Chip(
              backgroundColor: Color(borderColor!),
              label: Text(author!),
            ),
          ),
      ],
    );
  }
}

class _CardGitHubStarsForks extends StatelessWidget {
  const _CardGitHubStarsForks({
    required this.stars,
    required this.forks,
    Key? key,
  }) : super(key: key);

  final int? forks;
  final int? stars;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text('⭐: $stars'),
        Text('🔀: $forks'),
      ],
    );
  }
}

class _CardGitHubDescr extends StatelessWidget {
  const _CardGitHubDescr({
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle ?? '',
      style: const TextStyle(
        fontSize: 12.0,
        color: Colors.grey,
      ),
    );
  }
}

class _CardGitHubTitle extends StatelessWidget {
  const _CardGitHubTitle({
    required this.title,
    required this.currentPeriodStars,
    Key? key,
  }) : super(key: key);

  final int? currentPeriodStars;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title ?? '',
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
        Text(
          '+$currentPeriodStars ⭐ today',
          style: const TextStyle(
            fontSize: 11.0,
          ),
        ),
      ],
    );
  }
}
