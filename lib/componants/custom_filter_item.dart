import 'package:flutter/material.dart';

class CustomFilterItem extends StatelessWidget {
  const CustomFilterItem({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: ShapeDecoration(
        color: const Color(0x19FEAD1D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xFFDA6317),
            fontSize: 12,
            fontFamily: 'BentonSans Medium',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.43,
          ),
        ),
      ),
    );
  }
}
