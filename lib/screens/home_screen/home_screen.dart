import 'package:flutter/material.dart';
import 'package:food_delivery/componants/custom_container.dart';

import 'package:food_delivery/componants/gradient_icon.dart';

import 'package:food_delivery/utl/assets.dart';

import '../../componants/custom_filter_icon.dart';
import '../../componants/custom_search_bar.dart';
import '../../componants/header_of_list_view.dart';
import '../../componants/nearest_restaurants_list_view.dart';
import '../../componants/popular_menu_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  //promo Image
                  CustomContainer(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.184729064,
                    child: Image.asset(
                      Assets.promoImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.030788177,
                  ),
                  const HeaderOfListView(bigText: "Nearest Restaurant"),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.024630542,
                  ),
                  //nearest resto list view
                  const NearestRestaurantsListView(),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.024630542,
                  ),
                  const HeaderOfListView(bigText: "Popular Menu"),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.024630542,
                  ),
                  //Popular Menu List view
                  const PopularMenuListView()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
