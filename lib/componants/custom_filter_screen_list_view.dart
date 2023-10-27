import 'package:flutter/material.dart';
import 'package:food_delivery/componants/custom_filter_item.dart';

class CustomFilterScreenListView extends StatelessWidget {
  const CustomFilterScreenListView({super.key, required this.list});
  final List<String> list;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.054187192,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CustomFilterItem(text: list[index]),
          );
        },
      ),
    );
  }
}
