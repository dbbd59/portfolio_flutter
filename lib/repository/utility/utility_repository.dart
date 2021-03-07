// 📦 Package imports:
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/injections.dart';
import 'package:portfolio_flutter/repository/utility/i_utility_repository.dart';

// 🌎 Project imports:
@Injectable(as: IUtilityRepository, env: [Env.dev])
class UtilityRepository implements IUtilityRepository {
  UtilityRepository(
    this._prefs,
  );

  final SharedPreferences? _prefs;

  @override
  bool get showFps {
    return _prefs!.getBool('fps-enabled') ?? false;
  }

  @override
  int getColorHexFromStr(String? colorStr) {
    colorStr = 'FF$colorStr';
    colorStr = colorStr.replaceAll('#', '');
    var val = 0;
    final len = colorStr.length;
    for (var i = 0; i < len; i++) {
      final hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw const FormatException(
            'An error occurred when converting a color');
      }
    }
    return val;
  }

  @override
  void launchURL({String? url}) async {
    if (await canLaunch(url!)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  set showFps(bool value) {
    _prefs!.setBool('fps-enabled', value);
  }
}
