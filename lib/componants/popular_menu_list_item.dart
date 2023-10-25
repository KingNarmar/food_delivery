import 'package:flutter/material.dart';
import 'package:food_delivery/models/popular_menu_model.dart';

import 'custom_container.dart';

class PopularMenuListItem extends StatelessWidget {
  const PopularMenuListItem({
    super.key,
    required this.model,
  });
  final PopularMenuModel model;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: MediaQuery.sizeOf(context).height * 0.107142857,
      width: MediaQuery.sizeOf(context).width - 50,
      child: Center(
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(right: 21),
            child: Image.asset(model.leading),
          ),
          title: Text(
            model.title,
            style: const TextStyle(
              color: Color(0xFF09041B),
              fontSize: 15,
              fontFamily: 'BentonSans Medium',
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Opacity(
            opacity: 0.30,
            child: Text(
              model.subTitle,
              style: const TextStyle(
                color: Color(0xFF3B3B3B),
                fontSize: 14,
                fontFamily: 'BentonSans Regular',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.50,
              ),
            ),
          ),
          trailing: Text(
            model.trailing,
            style: const TextStyle(
              color: Color(0xFFFEAD1D),
              fontSize: 22,
              fontFamily: 'BentonSans Bold',
              fontWeight: FontWeight.w400,
              height: 0.06,
            ),
          ),
        ),
      ),
    );
  }
}
