import 'package:flutter/material.dart';

import '../utl/assets.dart';

class CustomFilterIcon extends StatelessWidget {
  const CustomFilterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 49,
      height: 50,
      decoration: ShapeDecoration(
        color: const Color(0xFFFEF6ED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Image.asset(Assets.filterIcon),
    );
  }
}
