// 🐦 Flutter imports:
import 'package:flutter/material.dart';

enum DisplayType {
  DESKTOP,
  MOBILE,
}

const _desktopBreakpoint = 800.0;
const _smallDesktopMaxWidth = 1100.0;

DisplayType displayTypeOf(BuildContext context) {
  if (MediaQuery.of(context).size.shortestSide > _desktopBreakpoint) {
    return DisplayType.DESKTOP;
  } else {
    return DisplayType.MOBILE;
  }
}

bool isDisplayDesktop(BuildContext context) {
  return displayTypeOf(context) == DisplayType.DESKTOP;
}

bool isDisplaySmallDesktop(BuildContext context) {
  return isDisplayDesktop(context) &&
      MediaQuery.of(context).size.width < _smallDesktopMaxWidth;
}
