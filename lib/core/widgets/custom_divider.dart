import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.width,
    required this.height,
    required this.color,
  });

  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
      height: height,
    );
  }
}
