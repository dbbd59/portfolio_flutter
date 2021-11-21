// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class Alert {
  Alert({
    required this.context,
    required this.title,
    this.image,
    this.desc,
    this.content,
    this.buttons,
    this.titleColor,
  }) {
    alertStyle = AlertStyle(
      animationType: AnimationType.grow,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      animationDuration: const Duration(
        milliseconds: 175,
      ),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      titleStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      descStyle: const TextStyle(),
    );
  }

  late AlertStyle alertStyle;
  final List<Widget>? buttons;
  final Widget? content;
  final BuildContext context;
  final String? desc;
  final Image? image;
  final String title;
  final Color? titleColor;

  void show() {
    showGeneralDialog(
      context: context,
      pageBuilder: (
        BuildContext buildContext,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return _buildDialog();
      },
      barrierDismissible: alertStyle.isOverlayTapDismiss,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: alertStyle.overlayColor,
      transitionDuration: alertStyle.animationDuration,
      transitionBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) =>
          _showAnimation(animation, secondaryAnimation, child),
    );
  }

  Widget _buildDialog() {
    return AlertDialog(
      shape: alertStyle.alertBorder ?? _defaultShape(),
      titlePadding: const EdgeInsets.only(
        top: 16.0,
        left: 8.0,
        right: 8.0,
      ),
      title: Text(
        title,
        style: alertStyle.titleStyle,
        textAlign: TextAlign.center,
      ),
      //contentPadding: alertStyle.buttonAreaPadding,
      content: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget?>[
              if (image != null)
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: image,
                ),
              const SizedBox(
                height: 8,
              ),
              if (desc != null)
                Text(
                  desc!,
                  style: alertStyle.descStyle,
                  textAlign: TextAlign.center,
                ),
              if (content != null) content,
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _getButtons(),
              ),
            ] as List<Widget>,
          ),
        ),
      ),
    );
  }

  ShapeBorder _defaultShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: const BorderSide(
        color: Colors.blueGrey,
      ),
    );
  }

  List<Widget> _getButtons() {
    final expandedButtons = <Widget>[];
    if (buttons != null) {
      buttons!.forEach(
        (button) {
          final buttonWidget = Padding(
            padding: const EdgeInsets.only(left: 2, right: 2),
            child: button,
          );
          if (buttons!.length == 1) {
            expandedButtons.add(buttonWidget);
          } else {
            expandedButtons.add(Expanded(
              child: buttonWidget,
            ));
          }
        },
      );
    }

    return expandedButtons;
  }

  dynamic _showAnimation(animation, secondaryAnimation, child) {
    if (alertStyle.animationType == AnimationType.fromRight) {
      return AnimationTransition.fromRight(
        animation,
        secondaryAnimation,
        child,
      );
    } else if (alertStyle.animationType == AnimationType.fromLeft) {
      return AnimationTransition.fromLeft(animation, secondaryAnimation, child);
    } else if (alertStyle.animationType == AnimationType.fromBottom) {
      return AnimationTransition.fromBottom(
        animation,
        secondaryAnimation,
        child,
      );
    } else if (alertStyle.animationType == AnimationType.grow) {
      return AnimationTransition.grow(animation, secondaryAnimation, child);
    } else if (alertStyle.animationType == AnimationType.shrink) {
      return AnimationTransition.shrink(animation, secondaryAnimation, child);
    } else {
      return AnimationTransition.fromTop(animation, secondaryAnimation, child);
    }
  }
}

class AnimationTransition {
  static SlideTransition fromBottom(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }

  static SlideTransition fromLeft(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }

  static SlideTransition fromRight(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }

  static SlideTransition fromTop(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, -1.0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }

  static ScaleTransition grow(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: const Interval(
            0.00,
            0.50,
          ),
        ),
      ),
      child: child,
    );
  }

  static ScaleTransition shrink(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(
        begin: 1.2,
        end: 1.0,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: const Interval(
            0.50,
            1.00,
          ),
        ),
      ),
      child: child,
    );
  }
}

class AlertStyle {
  const AlertStyle({
    this.animationType = AnimationType.fromBottom,
    this.animationDuration = const Duration(milliseconds: 200),
    this.alertBorder,
    this.isCloseButton = true,
    this.isOverlayTapDismiss = true,
    this.overlayColor = Colors.black87,
    this.titleStyle = const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 22.0,
    ),
    this.descStyle = const TextStyle(
      fontSize: 16.0,
    ),
    this.buttonAreaPadding = const EdgeInsets.all(20.0),
  });

  final ShapeBorder? alertBorder;
  final Duration animationDuration;
  final AnimationType animationType;
  final EdgeInsets buttonAreaPadding;
  final TextStyle descStyle;
  final bool isCloseButton;
  final bool isOverlayTapDismiss;
  final Color overlayColor;
  final TextStyle titleStyle;
}

enum AnimationType { fromRight, fromLeft, fromTop, fromBottom, grow, shrink }
