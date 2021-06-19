// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
    this.animationDuration = const Duration(milliseconds: 350),
    this.selectedIndex = 0,
    required this.destinations,
    this.onTap,
    this.elevation = 8,
    this.backgroundColor,
    this.height,
    this.labelBehavior = NavigationBarDestinationLabelBehavior.alwaysShow,
  }) : super(key: key);

  final Duration animationDuration;
  final Color? backgroundColor;
  final List<Widget> destinations;
  final double elevation;
  final double? height;
  final NavigationBarDestinationLabelBehavior labelBehavior;
  final ValueChanged<int>? onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final effectiveHeight =
        labelBehavior == NavigationBarDestinationLabelBehavior.alwaysHide
            ? 56.0
            : 74.0;

    return Material(
      elevation: elevation,
      color: backgroundColor ?? colorScheme.surface,
      child: NavigationBarBottomPadding(
        child: SizedBox(
          height: effectiveHeight,
          child: Row(
            children: <Widget>[
              for (int i = 0; i < destinations.length; i++)
                Expanded(
                  child: SelectableAnimatedBuilder(
                    duration: animationDuration,
                    isSelected: i == selectedIndex,
                    builder:
                        (BuildContext context, Animation<double> animation) {
                      return NavigationBarDestinationInfo(
                        destinationNumber: i,
                        totalNumberOfDestinations: destinations.length,
                        selectedAnimation: animation,
                        labelBehavior: labelBehavior,
                        onTap: onTap != null ? () => onTap!(i) : () {},
                        child: destinations[i],
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

enum NavigationBarDestinationLabelBehavior {
  alwaysShow,

  alwaysHide,

  onlyShowSelected,
}

class NavigationBarDestination extends StatelessWidget {
  const NavigationBarDestination({
    Key? key,
    required this.icon,
    this.unselectedIcon,
    required this.label,
  }) : super(key: key);

  final Widget icon;
  final String label;
  final Widget? unselectedIcon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final animation =
        NavigationBarDestinationInfo.of(context).selectedAnimation;
    final colorScheme = theme.colorScheme;

    return NavigationBarDestinationBuilder(
      label: label,
      buildIcon: (BuildContext context) {
        final selectedIconWidget = IconTheme.merge(
          child: icon,
          data: IconThemeData(
            size: 24,
            color: colorScheme.onSurface,
          ),
        );
        final unselectedIconWidget = IconTheme.merge(
          child: unselectedIcon ?? icon,
          data: IconThemeData(
            size: 24,
            color: colorScheme.onSurface,
          ),
        );

        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            NavigationBarIndicator(animation: animation),
            StatusTransitionWidgetBuilder(
              animation: animation,
              builder: (BuildContext context, Widget? child) {
                return animation.isForwardOrCompleted
                    ? selectedIconWidget
                    : unselectedIconWidget;
              },
            ),
          ],
        );
      },
      buildLabel: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(top: 4),
          child: ClampTextScaleFactor(
            upperLimit: 1,
            child: Text(
              label,
              style: theme.textTheme.overline?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
        );
      },
    );
  }
}

class NavigationBarDestinationBuilder extends StatelessWidget {
  const NavigationBarDestinationBuilder({
    Key? key,
    required this.buildIcon,
    required this.buildLabel,
    required this.label,
  }) : super(key: key);

  final Widget Function(BuildContext) buildIcon;
  final Widget Function(BuildContext) buildLabel;
  final String label;

  @override
  Widget build(BuildContext context) {
    final info = NavigationBarDestinationInfo.of(context);
    return NavigationBarDestinationSemantics(
      child: NavigationBarDestinationTooltip(
        message: label,
        child: InkWell(
          onTap: info.onTap,
          child: Row(
            children: <Widget>[
              Expanded(
                child: NavigationBarDestinationLayout(
                  icon: buildIcon(context),
                  label: buildLabel(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationBarDestinationLayout extends StatelessWidget {
  const NavigationBarDestinationLayout({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final Widget icon;
  final Widget label;

  static final Key _iconKey = UniqueKey();
  static final Key _labelKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return DestinationLayoutAnimationBuilder(
      builder: (BuildContext context, Animation<double> animation) {
        return CustomMultiChildLayout(
          delegate: _NavigationBarDestinationLayoutDelegate(
            animation: animation,
          ),
          children: <Widget>[
            LayoutId(
              id: _NavigationBarDestinationLayoutDelegate.iconId,
              child: RepaintBoundary(
                key: _iconKey,
                child: icon,
              ),
            ),
            LayoutId(
              id: _NavigationBarDestinationLayoutDelegate.labelId,
              child: FadeTransition(
                alwaysIncludeSemantics: true,
                opacity: animation,
                child: RepaintBoundary(
                  key: _labelKey,
                  child: label,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class DestinationLayoutAnimationBuilder extends StatelessWidget {
  const DestinationLayoutAnimationBuilder({Key? key, required this.builder})
      : super(key: key);

  final Widget Function(BuildContext, Animation<double>) builder;

  @override
  Widget build(BuildContext context) {
    final info = NavigationBarDestinationInfo.of(context);
    switch (info.labelBehavior) {
      case NavigationBarDestinationLabelBehavior.alwaysShow:
        return builder(context, kAlwaysCompleteAnimation);
      case NavigationBarDestinationLabelBehavior.alwaysHide:
        return builder(context, kAlwaysDismissedAnimation);
      case NavigationBarDestinationLabelBehavior.onlyShowSelected:
        return _CurvedAnimationBuilder(
          animation: info.selectedAnimation,
          curve: ThreePointCubic.easeInOutCubicEmphasized,
          reverseCurve: ThreePointCubic.easeInOutCubicEmphasized.flipped,
          builder: (BuildContext context, Animation<double> curvedAnimation) {
            return builder(context, curvedAnimation);
          },
        );
    }
  }
}

class NavigationBarDestinationSemantics extends StatelessWidget {
  const NavigationBarDestinationSemantics({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);
    final destinationInfo = NavigationBarDestinationInfo.of(context);
    return StatusTransitionWidgetBuilder(
      animation: destinationInfo.selectedAnimation,
      builder: (BuildContext context, Widget? child) {
        return Semantics(
          selected: destinationInfo.selectedAnimation.isForwardOrCompleted,
          container: true,
          child: child,
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          child,
          Semantics(
            label: localizations.tabLabel(
              tabIndex: destinationInfo.destinationNumber + 1,
              tabCount: destinationInfo.totalNumberOfDestinations,
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationBarDestinationTooltip extends StatelessWidget {
  const NavigationBarDestinationTooltip({
    Key? key,
    required this.message,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      verticalOffset: 42,
      excludeFromSemantics: true,
      preferBelow: false,
      child: child,
    );
  }
}

class NavigationBarIndicator extends StatelessWidget {
  const NavigationBarIndicator({
    Key? key,
    required this.animation,
    this.color,
  }) : super(key: key);

  final Animation<double> animation;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        final scale = animation.isDismissed
            ? 0.0
            : Tween<double>(
                begin: .4,
                end: 1.0,
              ).transform(
                CurveTween(
                  curve: ThreePointCubic.easeInOutCubicEmphasized,
                ).transform(animation.value),
              );

        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.diagonal3Values(
            scale,
            1.0,
            1.0,
          ),
          child: child,
        );
      },
      child: StatusTransitionWidgetBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          return SelectableAnimatedBuilder(
            isSelected: animation.isForwardOrCompleted,
            duration: const Duration(milliseconds: 100),
            alwaysDoFullAnimation: true,
            builder: (BuildContext context, Animation<double> fadeAnimation) {
              return FadeTransition(
                opacity: fadeAnimation,
                child: Container(
                  width: 64,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: color ?? colorScheme.primary.withOpacity(.24),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class NavigationBarDestinationInfo extends InheritedWidget {
  const NavigationBarDestinationInfo({
    Key? key,
    required this.destinationNumber,
    required this.totalNumberOfDestinations,
    required this.selectedAnimation,
    required this.labelBehavior,
    required this.onTap,
    required Widget child,
  }) : super(key: key, child: child);

  final int destinationNumber;
  final NavigationBarDestinationLabelBehavior labelBehavior;
  final VoidCallback onTap;
  final Animation<double> selectedAnimation;
  final int totalNumberOfDestinations;

  @override
  bool updateShouldNotify(NavigationBarDestinationInfo oldWidget) =>
      destinationNumber != oldWidget.destinationNumber ||
      totalNumberOfDestinations != oldWidget.totalNumberOfDestinations ||
      selectedAnimation != oldWidget.selectedAnimation ||
      labelBehavior != oldWidget.labelBehavior ||
      onTap != oldWidget.onTap;

  static NavigationBarDestinationInfo of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<NavigationBarDestinationInfo>();
    assert(
      result != null,
      'Navigation bar destinations need a NavigationBarDestinationInfo parent, '
      'usually provided by NavigationBar.',
    );
    return result!;
  }
}

class NavigationBarBottomPadding extends StatelessWidget {
  const NavigationBarBottomPadding({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final additionalBottomPadding = MediaQuery.of(context).padding.bottom;

    return Padding(
      padding: EdgeInsets.only(bottom: additionalBottomPadding),
      child: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        child: child,
      ),
    );
  }
}

class _NavigationBarDestinationLayoutDelegate extends MultiChildLayoutDelegate {
  _NavigationBarDestinationLayoutDelegate({required this.animation})
      : super(relayout: animation);

  static const int iconId = 1;
  static const int labelId = 2;

  final Animation<double> animation;

  @override
  void performLayout(Size size) {
    double halfWidth(Size size) => size.width / 2;
    double halfHeight(Size size) => size.height / 2;

    final iconSize = layoutChild(iconId, BoxConstraints.loose(size));
    final labelSize = layoutChild(labelId, BoxConstraints.loose(size));

    final yPositionOffset = Tween<double>(
      begin: halfHeight(iconSize),
      end: halfHeight(iconSize) + halfHeight(labelSize),
    ).transform(animation.value);
    final iconYPosition = halfHeight(size) - yPositionOffset;

    positionChild(
      iconId,
      Offset(
        halfWidth(size) - halfWidth(iconSize),
        iconYPosition,
      ),
    );

    positionChild(
      labelId,
      Offset(
        halfWidth(size) - halfWidth(labelSize),
        iconYPosition + iconSize.height,
      ),
    );
  }

  @override
  bool shouldRelayout(_NavigationBarDestinationLayoutDelegate oldDelegate) {
    return oldDelegate.animation != animation;
  }
}

class ClampTextScaleFactor extends StatelessWidget {
  const ClampTextScaleFactor({
    Key? key,
    this.lowerLimit = 0,
    this.upperLimit = double.infinity,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final double lowerLimit;
  final double upperLimit;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return MediaQuery(
      data: mediaQuery.copyWith(
        textScaleFactor: mediaQuery.textScaleFactor.clamp(
          lowerLimit,
          upperLimit,
        ),
      ),
      child: child,
    );
  }
}

class StatusTransitionWidgetBuilder extends StatusTransitionWidget {
  const StatusTransitionWidgetBuilder({
    Key? key,
    required Animation<double> animation,
    required this.builder,
    this.child,
  }) : super(animation: animation, key: key);

  final TransitionBuilder builder;
  final Widget? child;

  @override
  Widget build(BuildContext context) => builder(context, child);
}

class SelectableAnimatedBuilder extends StatefulWidget {
  const SelectableAnimatedBuilder({
    Key? key,
    required this.isSelected,
    this.duration = const Duration(milliseconds: 200),
    this.alwaysDoFullAnimation = false,
    required this.builder,
  }) : super(key: key);

  final Widget Function(BuildContext, Animation<double>) builder;
  final bool alwaysDoFullAnimation;
  final Duration duration;
  final bool isSelected;

  @override
  SelectableAnimatedBuilderState createState() =>
      SelectableAnimatedBuilderState();
}

class SelectableAnimatedBuilderState extends State<SelectableAnimatedBuilder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void didUpdateWidget(SelectableAnimatedBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.duration != widget.duration) {
      _controller.duration = widget.duration;
    }
    if (oldWidget.isSelected != widget.isSelected) {
      widget.isSelected
          ? _controller.forward(from: widget.alwaysDoFullAnimation ? 0 : null)
          : _controller.reverse(from: widget.alwaysDoFullAnimation ? 1 : null);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.duration = widget.duration;
    _controller.value = widget.isSelected ? 1.0 : 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      _controller,
    );
  }
}

class _CurvedAnimationBuilder extends StatefulWidget {
  const _CurvedAnimationBuilder({
    Key? key,
    required this.animation,
    required this.curve,
    required this.reverseCurve,
    required this.builder,
  }) : super(key: key);

  final Widget Function(BuildContext, Animation<double>) builder;
  final Animation<double> animation;
  final Curve curve;
  final Curve reverseCurve;

  @override
  _CurvedAnimationBuilderState createState() => _CurvedAnimationBuilderState();
}

class _CurvedAnimationBuilderState extends State<_CurvedAnimationBuilder> {
  late AnimationStatus _animationDirection;
  AnimationStatus? _preservedDirection;

  @override
  void dispose() {
    widget.animation.removeStatusListener(_updateStatus);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationDirection = widget.animation.status;
    _updateStatus(widget.animation.status);
    widget.animation.addStatusListener(_updateStatus);
  }

  void _updateStatus(AnimationStatus status) {
    if (_animationDirection != status) {
      setState(() {
        _animationDirection = status;
      });
    }

    if (status == AnimationStatus.completed ||
        status == AnimationStatus.dismissed) {
      setState(() {
        _preservedDirection = null;
      });
    }

    if (_preservedDirection == null &&
        (status == AnimationStatus.forward ||
            status == AnimationStatus.reverse)) {
      setState(() {
        _preservedDirection = status;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final shouldUseForwardCurve =
        (_preservedDirection ?? _animationDirection) != AnimationStatus.reverse;

    final curvedAnimation = CurveTween(
      curve: shouldUseForwardCurve ? widget.curve : widget.reverseCurve,
    ).animate(widget.animation);

    return widget.builder(context, curvedAnimation);
  }
}

extension _AnimationUtils on Animation<double> {
  bool get isForwardOrCompleted =>
      status == AnimationStatus.forward || status == AnimationStatus.completed;
}

class ThreePointCubic extends Curve {
  const ThreePointCubic(this.a1, this.b1, this.midpoint, this.a2, this.b2);

  static const ThreePointCubic easeInOutCubicEmphasized = ThreePointCubic(
    Offset(0.05, 0),
    Offset(0.133333, 0.06),
    Offset(0.166666, 0.4),
    Offset(0.208333, 0.82),
    Offset(0.25, 1),
  );

  final Offset a1;
  final Offset a2;
  final Offset b1;
  final Offset b2;
  final Offset midpoint;

  @override
  double transformInternal(double t) {
    final firstCurve = t < midpoint.dx;
    final scaleX = firstCurve ? midpoint.dx : 1.0 - midpoint.dx;
    final scaleY = firstCurve ? midpoint.dy : 1.0 - midpoint.dy;
    final scaledT = (t - (firstCurve ? 0.0 : midpoint.dx)) / scaleX;
    if (firstCurve) {
      return Cubic(
            a1.dx / scaleX,
            a1.dy / scaleY,
            b1.dx / scaleX,
            b1.dy / scaleY,
          ).transform(scaledT) *
          scaleY;
    } else {
      return Cubic(
                (a2.dx - midpoint.dx) / scaleX,
                (a2.dy - midpoint.dy) / scaleY,
                (b2.dx - midpoint.dx) / scaleX,
                (b2.dy - midpoint.dy) / scaleY,
              ).transform(scaledT) *
              scaleY +
          midpoint.dy;
    }
  }
}
