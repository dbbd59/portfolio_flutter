// 🎯 Dart imports:
import 'dart:convert';

// ignore_for_file: prefer_if_null_operators

class Job {
  Job({
    this.date,
    this.company,
    this.link,
    this.linkDisplay,
    this.jobTitle,
    this.descr,
  });

  final String? date;
  final String? company;
  final String? link;
  final String? linkDisplay;
  final String? jobTitle;
  final String? descr;

  factory Job.fromJson(String str) => Job.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Job.fromMap(Map<String, dynamic> json) => Job(
        date: json['date'] == null ? null : json['date'],
        company: json['company'] == null ? null : json['company'],
        link: json['link'] == null ? null : json['link'],
        linkDisplay: json['linkDisplay'] == null ? null : json['linkDisplay'],
        jobTitle: json['jobTitle'] == null ? null : json['jobTitle'],
        descr: json['descr'] == null ? null : json['descr'],
      );

  Map<String, dynamic> toMap() => {
        'date': date == null ? null : date,
        'company': company == null ? null : company,
        'link': link == null ? null : link,
        'linkDisplay': linkDisplay == null ? null : linkDisplay,
        'jobTitle': jobTitle == null ? null : jobTitle,
        'descr': descr == null ? null : descr,
      };
}
