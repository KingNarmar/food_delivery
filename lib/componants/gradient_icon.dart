import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final LinearGradient gradient;
  final double size;

  const GradientIcon({
    super.key,
    required this.icon,
    required this.gradient,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(bounds);
      },
      child: Icon(
        icon,
        size: size,
        color: Colors
            .white, // Set the color to white, as it will be replaced by the gradient
      ),
    );
  }
}
