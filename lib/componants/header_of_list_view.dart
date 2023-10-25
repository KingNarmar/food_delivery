import 'package:flutter/material.dart';

class HeaderOfListView extends StatelessWidget {
  const HeaderOfListView({
    super.key,
    required this.bigText,
    this.onTap1,
  });
  final String bigText;
  final void Function()? onTap1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap1,
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              bigText,
              style: const TextStyle(
                color: Color(0xFF09041B),
                fontSize: 15,
                fontFamily: 'BentonSans Bold',
                fontWeight: FontWeight.w400,
                height: 0.09,
              ),
            ),
            const Text(
              'View More',
              style: TextStyle(
                color: Color(0xFFFF7B32),
                fontSize: 12,
                fontFamily: 'BentonSans Book',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
