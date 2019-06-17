import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardGitHubTrend extends StatelessWidget {
  final Function onTap;
  final String imageNetwork;
  final String imageAsset;
  final String title;
  final String subTitle;
  final bool horizontal;
  final int borderColor;
  final int stars;
  final int forks;
  final int currentPeriodStars;
  final String languageName;
  final String author;
  CardGitHubTrend({
    @required this.title,
    @required this.onTap,
    @required this.horizontal,
    this.subTitle,
    this.imageNetwork,
    this.imageAsset,
    this.borderColor,
    this.stars,
    this.forks,
    this.languageName,
    this.author,
    this.currentPeriodStars,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 1,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 164,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Color(borderColor), width: 5),
              left: BorderSide(color: Color(borderColor), width: 5),
              top: BorderSide(color: Color(borderColor), width: 5),
              bottom: BorderSide(color: Color(borderColor), width: 5),
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
                      flex: 1,
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
                      flex: 1,
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
    Key key,
    @required this.title,
    @required this.currentPeriodStars,
    @required this.subTitle,
    @required this.stars,
    @required this.forks,
  }) : super(key: key);

  final String title;
  final int currentPeriodStars;
  final String subTitle;
  final int stars;
  final int forks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: _CardGitHubTitle(
                title: title,
                currentPeriodStars: currentPeriodStars,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              flex: 3,
              child: _CardGitHubDescr(
                subTitle: subTitle,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              flex: 1,
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
    Key key,
    @required this.imageNetwork,
    @required this.languageName,
    @required this.borderColor,
    @required this.author,
    @required this.horizontal,
  }) : super(key: key);

  final String imageNetwork;
  final String languageName;
  final int borderColor;
  final String author;
  final bool horizontal;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.center,
              image: imageNetwork != null
                  ? CachedNetworkImageProvider(imageNetwork)
                  : CachedNetworkImageProvider(
                      "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (languageName != null)
          Align(
            alignment: horizontal ? Alignment.topCenter : Alignment.bottomLeft,
            child: Chip(
              backgroundColor: Color(borderColor),
              label: Text(languageName),
            ),
          ),
        if (author != null)
          Align(
            alignment:
                horizontal ? Alignment.bottomCenter : Alignment.bottomRight,
            child: Chip(
              backgroundColor: Color(borderColor),
              label: Text(author),
            ),
          )
      ],
    );
  }
}

class _CardGitHubStarsForks extends StatelessWidget {
  const _CardGitHubStarsForks({
    Key key,
    @required this.stars,
    @required this.forks,
  }) : super(key: key);

  final int stars;
  final int forks;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text("⭐: $stars"),
        Text("🔀: $forks"),
      ],
    );
  }
}

class _CardGitHubDescr extends StatelessWidget {
  const _CardGitHubDescr({
    Key key,
    @required this.subTitle,
  }) : super(key: key);

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle != null ? subTitle : "",
      overflow: TextOverflow.fade,
      style: TextStyle(
        fontSize: 12.0,
        color: Colors.grey,
      ),
    );
  }
}

class _CardGitHubTitle extends StatelessWidget {
  const _CardGitHubTitle({
    Key key,
    @required this.title,
    @required this.currentPeriodStars,
  }) : super(key: key);

  final String title;
  final int currentPeriodStars;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title != null ? title : "",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        Text(
          "+$currentPeriodStars ⭐ today",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 11.0,
          ),
        ),
      ],
    );
  }
}
