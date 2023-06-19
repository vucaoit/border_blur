import 'package:flutter/material.dart';

class InvertedRect extends CustomClipper<Path> {
  final double padding;
  final double radius;
  InvertedRect({this.padding = 20, this.radius = 16});

  @override
  getClip(Size size) {
    return Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(0.0, 0.0, size.width, size.height),
          Radius.circular(radius)))
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(padding, padding, size.width - padding * 2,
              size.height - padding * 2),
          Radius.circular(radius)))
      ..fillType = PathFillType.evenOdd;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
