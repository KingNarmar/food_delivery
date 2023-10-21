import 'package:flutter/material.dart';
import 'package:food_delivery/utl/assets.dart';

class AppBarBackWordIcon extends StatelessWidget {
  const AppBarBackWordIcon({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 11),
        child: Image.asset(Assets.backWordIcon),
      ),
    );
  }
}
