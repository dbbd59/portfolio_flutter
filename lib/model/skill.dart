// To parse this JSON data, do
//
//     final skill = skillFromJson(jsonString);

import 'dart:convert';

class Skill {
  final String name;
  final double perc;

  Skill({
    this.name,
    this.perc,
  });

  Skill copyWith({
    String name,
    double perc,
  }) =>
      Skill(
        name: name ?? this.name,
        perc: perc ?? this.perc,
      );

  factory Skill.fromJson(String str) => Skill.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Skill.fromMap(Map<String, dynamic> json) => Skill(
        name: json["name"] == null ? null : json["name"],
        perc: json["perc"] == null ? null : json["perc"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "perc": perc == null ? null : perc,
      };
}
