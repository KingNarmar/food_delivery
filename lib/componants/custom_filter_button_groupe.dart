import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class CustomFilterButtonGroupe extends StatelessWidget {
  const CustomFilterButtonGroupe({
    super.key,
    required this.list,
    this.onSelected,
  });

  final List<String> list;
  final dynamic Function(String, int, bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    return GroupButton(
      buttons: list,
      options: GroupButtonOptions(
        unselectedColor: const Color(0x19FEAD1D),
        borderRadius: BorderRadius.circular(15),
        unselectedTextStyle: const TextStyle(
          color: Color(0xFFDA6317),
          fontSize: 12,
          fontFamily: 'BentonSans Medium',
          fontWeight: FontWeight.w400,
          letterSpacing: 0.43,
        ),
      ),
      onSelected: onSelected,
    );
  }
}
