import 'package:flutter/material.dart';

// class CustomTextFormField extends StatelessWidget {
//   const CustomTextFormField({
//     super.key,
//     required this.hintText,
//     this.prefix,
//   });
//   final String hintText;
//   final Widget? prefix;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 57,
//       decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//           side: const BorderSide(width: 1, color: Color(0xFFF4F4F4)),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         shadows: const [
//           BoxShadow(
//             color: Color(0x115A6CEA),
//             blurRadius: 50,
//             offset: Offset(12, 26),
//             spreadRadius: 0,
//           )
//         ],
//       ),
//       child: Form(
//         child: TextFormField(
//           decoration: InputDecoration(
//             prefixIcon: prefix,
//             border: InputBorder.none,
//             hintText: hintText,
//             hintStyle: TextStyle(
//               color: const Color(0xFF3B3B3B).withOpacity(0.3),
//             ),
//             contentPadding: const EdgeInsets.symmetric(
//               horizontal: 28,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.prefix,
    this.suffixIcon,
    this.child,
    this.validator,
    this.onChanged,
    this.controller,
  }) : super(key: key);

  final String? hintText;
  final Widget? prefix;
  final Widget? suffixIcon;
  final Widget? child;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF4F4F4)),
          borderRadius: BorderRadius.circular(15),
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
        children: [
          if (prefix != null)
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: prefix,
            ),
          Expanded(
            child: TextFormField(
              controller: controller,
              validator: validator,
              onChanged: onChanged,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: const Color(0xFF3B3B3B).withOpacity(0.3),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 28,
                ),
              ),
            ),
          ),
          if (suffixIcon != null)
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
              child: suffixIcon,
            ),
        ],
      ),
    );
  }
}
