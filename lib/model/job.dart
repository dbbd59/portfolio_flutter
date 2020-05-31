import 'dart:convert';

class Job {
  final String date;
  final String company;
  final String link;
  final String linkDisplay;
  final String jobTitle;
  final String descr;

  Job({
    this.date,
    this.company,
    this.link,
    this.linkDisplay,
    this.jobTitle,
    this.descr,
  });

  Job copyWith({
    String date,
    String company,
    String link,
    String linkDisplay,
    String jobTitle,
    String descr,
  }) =>
      Job(
        date: date ?? this.date,
        company: company ?? this.company,
        link: link ?? this.link,
        linkDisplay: linkDisplay ?? this.linkDisplay,
        jobTitle: jobTitle ?? this.jobTitle,
        descr: descr ?? this.descr,
      );

  factory Job.fromJson(String str) => Job.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Job.fromMap(Map<String, dynamic> json) => Job(
        date: json["date"] == null ? null : json["date"],
        company: json["company"] == null ? null : json["company"],
        link: json["link"] == null ? null : json["link"],
        linkDisplay: json["linkDisplay"] == null ? null : json["linkDisplay"],
        jobTitle: json["jobTitle"] == null ? null : json["jobTitle"],
        descr: json["descr"] == null ? null : json["descr"],
      );

  Map<String, dynamic> toMap() => {
        "date": date == null ? null : date,
        "company": company == null ? null : company,
        "link": link == null ? null : link,
        "linkDisplay": linkDisplay == null ? null : linkDisplay,
        "jobTitle": jobTitle == null ? null : jobTitle,
        "descr": descr == null ? null : descr,
      };
}
