import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SearchBar(
        hintText: text,
        textStyle: const MaterialStatePropertyAll(
          TextStyle(
            color: Color(0xFFDA6317),
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.50,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.only(
            left: 20,
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Color(0xFFFEF6ED),
        ),
        leading: const Icon(
          Icons.search_outlined,
        ),
      ),
    );
  }
}
