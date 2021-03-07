// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class DiagonallyCutColoredImage extends StatelessWidget {
  DiagonallyCutColoredImage(this.image, {Key? key, required this.color})
      : super(key: key);

  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DiagonalClipper(),
      child: DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(color: color),
        child: image,
      ),
    );
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height - 50.0);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
