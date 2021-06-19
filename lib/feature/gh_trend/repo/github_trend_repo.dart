// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/model/github_trend.dart';

@injectable
class GithubTrendRepo {
  Future<List<GitHubTrend>?> fetchGitHubTrends() async {
    final response = await Dio()
        .get('https://go-rest-services.herokuapp.com/api/v1/ghtrends');
    if (response.statusCode == 201) {
      final listGitHubTrend = <GitHubTrend>[];
      if (response.data != null) {
        final jsonResponse = response.data['data'];

        final trends = List<GitHubTrend>.from(
          jsonResponse.map(
            (x) {
              return GitHubTrend.fromMap(x);
            },
          ),
        );
        return trends;
      }
      return listGitHubTrend;
    } else {
      return [];
    }
  }
}
