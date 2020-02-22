import 'package:baseapp/helpers/injection_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  Future<void> auth() async {
    sl<SharedPreferences>().setString("accessToken", "x");
  }

  Future<void> logout() async {
    sl<SharedPreferences>().remove("accessToken");
  }
}
