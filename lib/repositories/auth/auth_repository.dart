// 📦 Package imports:
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 🌎 Project imports:
import 'package:baseapp/repositories/auth/i_auth_repository.dart';

@Injectable(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository(
    this._prefs,
  );

  final SharedPreferences _prefs;

  @override
  Future<void> auth() async {
    _prefs.setString("accessToken", "x");
  }

  @override
  Future<void> logout() async {
    _prefs.remove("accessToken");
  }
}
