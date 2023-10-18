import 'package:flutter/material.dart';

import '../../../utl/assets.dart';

class OnBoardingTitle extends StatelessWidget {
  const OnBoardingTitle({
    super.key,
    required this.text,
    this.width,
  });
  final String text;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        style: const TextStyle(
            fontFamily: Assets.bentonSansBoldFont,
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: Color(0xff09051C)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
