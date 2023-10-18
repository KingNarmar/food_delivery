import 'package:flutter/material.dart';

class LinearGradientText extends StatelessWidget {
  const LinearGradientText({
    super.key,
  });

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
      child: const Text(
        "FoodNinja",
        style: TextStyle(
            fontFamily: "Viga",
            fontSize: 40,
            color: Color(0xff53E88B),
            letterSpacing: 0.5,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
