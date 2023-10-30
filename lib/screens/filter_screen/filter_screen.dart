import 'package:flutter/material.dart';
import 'package:food_delivery/componants/custom_button.dart';

import '../../componants/custom_filter_button_groupe.dart';

import '../../componants/custom_search_bar.dart';
import '../../componants/gradient_icon.dart';
import '../../utl/assets.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
  static List<String> typeList = ['Restaurant', 'Menu'];
  static List<String> locationList = ["1 KM", ">10 KM", "<10 KM"];
  static List<String> foodList = [
    'Cake',
    'Soup',
    'Main Course',
    'Appetizer',
    'Dessert',
    'Cake',
    'Soup',
    'Main Course',
  ];
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
                  //search bar
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomSearchBar(text: "What do you want to order?"),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.024630542,
                  ),
                  const Text(
                    'Type',
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
                  CustomFilterButtonGroupe(list: typeList),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.024630542,
                  ),
                  const Text(
                    'Location',
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
                  CustomFilterButtonGroupe(list: locationList),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.024630542,
                  ),
                  const Text(
                    'Food',
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
                  CustomFilterButtonGroupe(list: foodList),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.169950739,
                  ),
                  Center(child: CustomButton(text: "Search", onTap: () {}))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
