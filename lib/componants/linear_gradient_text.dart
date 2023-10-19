import 'package:flutter/material.dart';

class LinearGradientText extends StatelessWidget {
  const LinearGradientText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontFamily,
  });
  final String text;
  final double fontSize;
  final String fontFamily;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
                colors: [Color(0xff53E88B), Color(0xff15BE77)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)
            .createShader(bounds);
      },
      child: Text(
        text,
        style: TextStyle(
            fontFamily: fontFamily,
            fontSize: fontSize,
            color: const Color(0xff53E88B),
            letterSpacing: 0.5,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
