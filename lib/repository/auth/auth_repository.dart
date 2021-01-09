// 📦 Package imports:
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/repository/auth/i_auth_repository.dart';

// 🌎 Project imports:

@Injectable(as: IAuthRepository, env: [Env.dev])
class AuthRepository implements IAuthRepository {
  AuthRepository(
    this._prefs,
  );

  final SharedPreferences _prefs;

  @override
  Future<void> auth() async {
    await _prefs.setString('accessToken', 'x');
  }

  @override
  Future<void> logout() async {
    await _prefs.remove('accessToken');
  }
}

@Injectable(as: IAuthRepository, env: [Env.test])
class MockAuthRepository extends Mock implements IAuthRepository {}
