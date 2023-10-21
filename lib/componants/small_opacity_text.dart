import 'package:flutter/material.dart';

import '../utl/assets.dart';

class SmallOpacityText extends StatelessWidget {
  const SmallOpacityText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 12,
              fontFamily: Assets.bentonSansBook,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ),
    );
  }
}
