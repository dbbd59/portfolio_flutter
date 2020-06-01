import 'package:portfolio_flutter/model/github_trend.dart';
import 'package:portfolio_flutter/model/job.dart';
import 'package:portfolio_flutter/model/news.dart';
import 'package:portfolio_flutter/model/skill.dart';
import 'package:portfolio_flutter/repository/http_service/i_http_service.dart';

abstract class IApiService {
  IHttpService httpService;
  String token;

  Future<News> fetchNews();

  Future<List<GitHubTrend>> fetchGitHubTrends();

  Future<List<Job>> fetchJobs();

  Future<List<Skill>> fetchSkills();
}
