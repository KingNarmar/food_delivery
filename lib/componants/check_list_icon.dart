import 'package:flutter/material.dart';

import '../utl/assets.dart';

class CheckListIcon extends StatelessWidget {
  const CheckListIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.99, -0.15),
            end: Alignment(-0.99, 0.15),
            colors: [Color(0xFF53E78B), Color(0xFF14BE77)],
          ),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF4F4F4)),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
            BoxShadow(
                color: Color(0x115A6CEA),
                blurRadius: 50,
                offset: Offset(12, 26),
                spreadRadius: 0),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset(Assets.chickIcon),
      ),
    );
  }
}
