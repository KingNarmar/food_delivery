import 'package:flutter/material.dart';

import '../../../utl/assets.dart';

class OnBoardingSubTitle extends StatelessWidget {
  const OnBoardingSubTitle({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 244,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontFamily: Assets.bentonSansBook,
            fontSize: 12,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
