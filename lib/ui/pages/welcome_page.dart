// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/ui/common/widgets/welcome_widgets/welcome_large.dart';
import 'package:portfolio_flutter/ui/common/widgets/welcome_widgets/welcome_small.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const Center(child: WelcomeLarge());
        }
        if (constraints.maxWidth <= 600) {
          return const Center(child: WelcomeSmall());
        }
        return Container();
      },
    );
  }
}
