// 🐦 Flutter imports:
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

// 📦 Package imports:
import 'package:routemaster/routemaster.dart';

class TitleObserver extends RoutemasterObserver {
  @override
  void didChangeRoute(RouteData routeData, Page page) {
    if (page.name != null) {
      SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(label: page.name),
      );
    }
  }
}
