// 🎯 Dart imports:
import 'dart:convert';

// ignore_for_file: prefer_if_null_operators

class Skill {
  Skill({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.skillId,
    this.name,
    this.perc,
  });

  factory Skill.fromJson(String str) => Skill.fromMap(json.decode(str));

  factory Skill.fromMap(Map<String, dynamic> json) => Skill(
        id: json['ID'] == null ? null : json['ID'],
        createdAt: json['CreatedAt'] == null
            ? null
            : DateTime.parse(json['CreatedAt']),
        updatedAt: json['UpdatedAt'] == null
            ? null
            : DateTime.parse(json['UpdatedAt']),
        deletedAt: json['DeletedAt'],
        skillId: json['id'] == null ? null : json['id'],
        name: json['name'] == null ? null : json['name'],
        perc: json['perc'] == null ? null : json['perc'].toDouble(),
      );

  final DateTime? createdAt;
  final dynamic deletedAt;
  final int? id;
  final String? name;
  final double? perc;
  final int? skillId;
  final DateTime? updatedAt;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        'ID': id == null ? null : id,
        'CreatedAt': createdAt == null ? null : createdAt!.toIso8601String(),
        'UpdatedAt': updatedAt == null ? null : updatedAt!.toIso8601String(),
        'DeletedAt': deletedAt,
        'id': skillId == null ? null : skillId,
        'name': name == null ? null : name,
        'perc': perc == null ? null : perc,
      };
}
