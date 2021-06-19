// 📦 Package imports:
import 'package:injectable/injectable.dart';
import 'package:portfolio_flutter/core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

// 🌎 Project imports:
@injectable
class UtilityRepository {
  bool get showFps {
    return getIt<SharedPreferences>().getBool('fps-enabled') ?? false;
  }

/*   int getColorHexFromStr(String? colorStr) {
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
  } */

  void launchURL({String? url}) async {
    if (await canLaunch(url!)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  set showFps(bool value) {
    getIt<SharedPreferences>().setBool('fps-enabled', value);
  }
}
