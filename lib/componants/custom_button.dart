import 'package:flutter/material.dart';

import '../utl/assets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 57,
        width: 157,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff53E88B), Color(0xff15BE77)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              fontFamily: Assets.bentonSansBoldFont,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white),
        )),
      ),
    );
  }
}
