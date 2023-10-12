import 'package:flutter/material.dart';
import 'package:food_delivery/utl/assets.dart';

import '../onBoarding2/widgets/custom_button.dart';
import '../onBoarding2/widgets/on_boarding_subtitle.dart';
import '../onBoarding2/widgets/on_boarding_title.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(Assets.onBoarding2Pic),
          ),
          const SizedBox(height: 38.95),
          const OnBoardingTitle(
              text: "Food Ninja is Where Your Comfort Food Lives", width: 348),
          const SizedBox(
            height: 20,
          ),
          const OnBoardingSubTitle(
              text: "Enjoy a fast and smooth food delivery at your doorstep"),
          const SizedBox(
            height: 42,
          ),
          CustomButton(
            text: "Next",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
