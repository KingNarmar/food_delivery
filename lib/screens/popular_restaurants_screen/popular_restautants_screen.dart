import 'package:flutter/material.dart';
import 'package:food_delivery/componants/nearest_rest_item.dart';
import 'package:food_delivery/models/nearest_rest_model.dart';

import '../../componants/custom_filter_icon.dart';
import '../../componants/custom_search_bar.dart';
import '../../componants/gradient_icon.dart';
import '../../utl/assets.dart';

class PopularRestaurantsScreen extends StatelessWidget {
  const PopularRestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //starting background
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Image.asset(
              Assets.patternPic,
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
              //End background
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //heddin app bar
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //first text
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.62,
                        child: const Text(
                          'Find Your Favorite Food',
                          style: TextStyle(
                            color: Color(0xFF09041B),
                            fontSize: 31,
                            fontFamily: 'BentonSans Bold',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      //first Icon
                      const GradientIcon(
                        icon: Icons.notification_add_outlined,
                        gradient: LinearGradient(
                          colors: [Color(0xff53E88B), Color(0xff15BE77)],
                        ),
                        size: 45,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.022167488,
                  ),
                  //search bar and filter icon
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomSearchBar(text: "What do you want to order?"),
                      SizedBox(
                        width: 8,
                      ),
                      CustomFilterIcon(),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.024630542,
                  ),
                  const Text(
                    'Popular Restaurant',
                    style: TextStyle(
                      color: Color(0xFF09041B),
                      fontSize: 15,
                      fontFamily: 'BentonSans Bold',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.024630542,
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: NearestRestModel.restaurants.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20, bottom: 20),
                          child: NearestRestItem(
                              model: NearestRestModel(
                                  image:
                                      NearestRestModel.restaurants[index].image,
                                  title:
                                      NearestRestModel.restaurants[index].title,
                                  subTitle: NearestRestModel
                                      .restaurants[index].subTitle)),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
