import 'package:baseapp/shared/injection_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  Future<void> auth() async {
    getIt<SharedPreferences>().setString("accessToken", "x");
  }

  Future<void> logout() async {
    getIt<SharedPreferences>().remove("accessToken");
  }
}
