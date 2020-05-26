// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

abstract class IUtilityRepository {
  int getColorHexFromStr(String colorStr);

  launchURL({@required String url});

  bool get showFps;

  set showFps(bool value);
}
