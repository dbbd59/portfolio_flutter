// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:baseapp/repositories/utility/i_utility_repository.dart';

@Singleton()
class UtilityChangeNotifier extends ChangeNotifier {
  final IUtilityRepository _utilityRepository;

  UtilityChangeNotifier(this._utilityRepository);

  set showFps(bool value) {
    _utilityRepository.showFps = value;
    notifyListeners();
  }

  bool get showFps {
    return _utilityRepository.showFps;
  }
}
