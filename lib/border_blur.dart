import 'dart:ui';

import 'package:flutter/material.dart';

import 'inverted_rec.dart';

class BorderBlur extends StatelessWidget {
  final double blur;
  final double padding;
  final double radius;

  const BorderBlur(
      {super.key, this.blur = 5.0, this.padding = 10.0, this.radius = 16});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: InvertedRect(padding: padding, radius: radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          color: Colors.transparent,
        ),
      ),
    );
  }
}
