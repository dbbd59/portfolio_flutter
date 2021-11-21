// 🎯 Dart imports:
import 'dart:convert';

// ignore_for_file: prefer_if_null_operators

class News {
  News({
    this.status,
    this.totalResults,
    this.articles,
  });

  factory News.fromJson(String str) => News.fromMap(json.decode(str));

  factory News.fromMap(Map<String, dynamic> json) => News(
        status: json['status'] == null ? null : json['status'],
        totalResults:
            json['totalResults'] == null ? null : json['totalResults'],
        articles: json['articles'] == null
            ? null
            : List<Article>.from(
                json['articles'].map(
                  (x) => Article.fromMap(
                    x,
                  ),
                ),
              ),
      );

  final List<Article>? articles;
  final String? status;
  final int? totalResults;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'status': status == null ? null : status,
        'totalResults': totalResults == null ? null : totalResults,
        'articles': articles == null
            ? null
            : List<dynamic>.from(articles!.map((x) => x.toMap())),
      };
}

class Article {
  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory Article.fromJson(String str) => Article.fromMap(json.decode(str));

  factory Article.fromMap(Map<String, dynamic> json) => Article(
        source: json['source'] == null ? null : Source.fromMap(json['source']),
        author: json['author'] == null ? null : json['author'],
        title: json['title'] == null ? null : json['title'],
        description: json['description'] == null ? null : json['description'],
        url: json['url'] == null ? null : json['url'],
        urlToImage: json['urlToImage'] == null ? null : json['urlToImage'],
        publishedAt: json['publishedAt'] == null
            ? null
            : DateTime.parse(json['publishedAt']),
        content: json['content'] == null ? null : json['content'],
      );

  final String? author;
  final String? content;
  final String? description;
  final DateTime? publishedAt;
  final Source? source;
  final String? title;
  final String? url;
  final String? urlToImage;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'source': source == null ? null : source!.toMap(),
        'author': author == null ? null : author,
        'title': title == null ? null : title,
        'description': description == null ? null : description,
        'url': url == null ? null : url,
        'urlToImage': urlToImage == null ? null : urlToImage,
        'publishedAt':
            publishedAt == null ? null : publishedAt!.toIso8601String(),
        'content': content == null ? null : content,
      };
}

class Source {
  Source({
    this.id,
    this.name,
  });

  factory Source.fromJson(String str) => Source.fromMap(json.decode(str));

  factory Source.fromMap(Map<String, dynamic> json) => Source(
        id: json['id'] == null ? null : json['id'],
        name: json['name'] == null ? null : json['name'],
      );

  final String? id;
  final String? name;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'id': id == null ? null : id,
        'name': name == null ? null : name,
      };
}
