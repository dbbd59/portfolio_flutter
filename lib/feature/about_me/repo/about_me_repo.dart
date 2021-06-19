// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/model/job.dart';
import 'package:portfolio_flutter/model/skill.dart';

@injectable
class AboutMeRepo {
  Future<List<Job>?> fetchJobs() async {
    final response =
        await Dio().get('https://go-rest-services.herokuapp.com/api/v1/jobs');
    if (response.statusCode == 201) {
      final jsonResponse = response.data['data'];

      final jobs = List<Job>.from(
        jsonResponse.map(
          (x) => Job.fromMap(x),
        ),
      );
      return jobs;
    } else {
      return null;
    }
  }

  Future<List<Skill>?> fetchSkills() async {
    final response =
        await Dio().get('https://go-rest-services.herokuapp.com/api/v1/skills');
    if (response.statusCode == 201) {
      final jsonResponse = response.data['data'];

      final skills = List<Skill>.from(
        jsonResponse.map(
          (x) => Skill.fromMap(x),
        ),
      );
      return skills;
    } else {
      return null;
    }
  }
}
