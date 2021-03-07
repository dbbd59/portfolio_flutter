// 🎯 Dart imports:
import 'dart:convert';

// ignore_for_file: prefer_if_null_operators
class GitHubTrend {
  GitHubTrend({
    this.author,
    this.name,
    this.avatar,
    this.description,
    this.url,
    this.language,
    this.languageColor,
    this.stars,
    this.forks,
    this.currentPeriodStars,
    this.builtBy,
  });

  final String? author;
  final String? name;
  final String? avatar;
  final String? description;
  final String? url;
  final String? language;
  final String? languageColor;
  final int? stars;
  final int? forks;
  final int? currentPeriodStars;
  final List<BuiltBy>? builtBy;

  factory GitHubTrend.fromJson(String str) =>
      GitHubTrend.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GitHubTrend.fromMap(Map<String, dynamic> json) => GitHubTrend(
        author: json['author'] == null ? null : json['author'],
        name: json['name'] == null ? null : json['name'],
        avatar: json['avatar'] == null ? null : json['avatar'],
        description: json['description'] == null ? null : json['description'],
        url: json['url'] == null ? null : json['url'],
        language: json['language'] == null ? null : json['language'],
        languageColor:
            json['languageColor'] == null ? null : json['languageColor'],
        stars: json['stars'] == null ? null : json['stars'],
        forks: json['forks'] == null ? null : json['forks'],
        currentPeriodStars: json['currentPeriodStars'] == null
            ? null
            : json['currentPeriodStars'],
        builtBy: json['builtBy'] == null
            ? null
            : List<BuiltBy>.from(
                json['builtBy'].map((x) => BuiltBy.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        'author': author == null ? null : author,
        'name': name == null ? null : name,
        'avatar': avatar == null ? null : avatar,
        'description': description == null ? null : description,
        'url': url == null ? null : url,
        'language': language == null ? null : language,
        'languageColor': languageColor == null ? null : languageColor,
        'stars': stars == null ? null : stars,
        'forks': forks == null ? null : forks,
        'currentPeriodStars':
            currentPeriodStars == null ? null : currentPeriodStars,
        'builtBy': builtBy == null
            ? null
            : List<dynamic>.from(builtBy!.map((x) => x.toMap())),
      };
}

class BuiltBy {
  BuiltBy({
    this.username,
    this.href,
    this.avatar,
  });

  final String? username;
  final String? href;
  final String? avatar;

  factory BuiltBy.fromJson(String str) => BuiltBy.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BuiltBy.fromMap(Map<String, dynamic> json) => BuiltBy(
        username: json['username'] == null ? null : json['username'],
        href: json['href'] == null ? null : json['href'],
        avatar: json['avatar'] == null ? null : json['avatar'],
      );

  Map<String, dynamic> toMap() => {
        'username': username == null ? null : username,
        'href': href == null ? null : href,
        'avatar': avatar == null ? null : avatar,
      };
}
