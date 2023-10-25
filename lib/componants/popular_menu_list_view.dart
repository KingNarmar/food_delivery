import 'package:flutter/material.dart';

import '../models/popular_menu_model.dart';
import 'popular_menu_list_item.dart';

class PopularMenuListView extends StatelessWidget {
  const PopularMenuListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.107142857,
      child: ListView.builder(
        itemCount: PopularMenuModel.popularList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return PopularMenuListItem(
              model: PopularMenuModel(
                  leading: PopularMenuModel.popularList[index].leading,
                  title: PopularMenuModel.popularList[index].title,
                  subTitle: PopularMenuModel.popularList[index].subTitle,
                  trailing: PopularMenuModel.popularList[index].trailing));
        },
      ),
    );
  }
}
