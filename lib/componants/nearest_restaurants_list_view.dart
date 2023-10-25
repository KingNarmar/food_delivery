import 'package:flutter/material.dart';

import '../models/nearest_rest_model.dart';
import 'nearest_rest_item.dart';

class NearestRestaurantsListView extends StatelessWidget {
  const NearestRestaurantsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.226600985,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: NearestRestModel.restaurants.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: NearestRestItem(
                model: NearestRestModel(
                    image: NearestRestModel.restaurants[index].image,
                    title: NearestRestModel.restaurants[index].title,
                    subTitle: NearestRestModel.restaurants[index].subTitle)),
          );
        },
      ),
    );
  }
}
