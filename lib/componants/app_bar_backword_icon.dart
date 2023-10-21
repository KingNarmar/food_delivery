import 'package:flutter/material.dart';
import 'package:food_delivery/utl/assets.dart';

class AppBarBackWordIcon extends StatelessWidget {
  const AppBarBackWordIcon({
    super.key,
    this.onTap,
    required this.padding,
  });
  final void Function()? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Image.asset(Assets.backWordIcon),
      ),
    );
  }
}
