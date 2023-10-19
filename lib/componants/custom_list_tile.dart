import 'package:flutter/material.dart';

import '../utl/assets.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.text,
  });
  final String icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: 152,
        height: 57,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
              width: 1,
              color: Color(0xFFF4F4F4),
            ),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x115A6CEA),
              blurRadius: 50,
              offset: Offset(12, 26),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 13),
              child: Image.asset(icon),
            ),
            Text(
              text,
              style: const TextStyle(
                  fontFamily: Assets.bentonSansBoldFont,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  color: Color(0xFF09051C),
                  fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
