import 'package:flutter/material.dart';
import 'package:portfolio/widgets/welcome_widgets/welcome_large.dart';
import 'package:portfolio/widgets/welcome_widgets/welcome_small.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) return Center(child: WelcomeLarge());
        if (constraints.maxWidth <= 600) return Center(child: WelcomeSmall());
        return Container();
      },
    );
  }
}
