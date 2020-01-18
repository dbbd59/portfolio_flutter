// To parse this JSON data, do
//
//     final chuckNorrisFacts = chuckNorrisFactsFromJson(jsonString);

import 'dart:convert';

class ChuckNorrisFact {
  List<dynamic> categories;
  DateTime createdAt;
  String iconUrl;
  String id;
  DateTime updatedAt;
  String url;
  String value;

  ChuckNorrisFact({
    this.categories,
    this.createdAt,
    this.iconUrl,
    this.id,
    this.updatedAt,
    this.url,
    this.value,
  });

  ChuckNorrisFact copyWith({
    List<dynamic> categories,
    DateTime createdAt,
    String iconUrl,
    String id,
    DateTime updatedAt,
    String url,
    String value,
  }) =>
      ChuckNorrisFact(
        categories: categories ?? this.categories,
        createdAt: createdAt ?? this.createdAt,
        iconUrl: iconUrl ?? this.iconUrl,
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        url: url ?? this.url,
        value: value ?? this.value,
      );

  factory ChuckNorrisFact.fromJson(String str) =>
      ChuckNorrisFact.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ChuckNorrisFact.fromMap(Map<String, dynamic> json) =>
      ChuckNorrisFact(
        categories: json["categories"] == null
            ? null
            : List<dynamic>.from(json["categories"].map((x) => x)),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        iconUrl: json["icon_url"] == null ? null : json["icon_url"],
        id: json["id"] == null ? null : json["id"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        url: json["url"] == null ? null : json["url"],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toMap() => {
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories.map((x) => x)),
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "icon_url": iconUrl == null ? null : iconUrl,
        "id": id == null ? null : id,
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "url": url == null ? null : url,
        "value": value == null ? null : value,
      };
}
