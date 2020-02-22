import 'package:flutter/material.dart';

class ProgressIndicatorCustom extends StatelessWidget {
  const ProgressIndicatorCustom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor:
            AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
      ),
    );
  }
}
