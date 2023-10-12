import 'package:flutter/material.dart';
import 'package:food_delivery/pages/onBoarding2/widgets/custom_button.dart';
import 'package:food_delivery/utl/assets.dart';
import '../onBoarding3/on_boarding3.dart';
import 'widgets/on_boarding_subtitle.dart';
import 'widgets/on_boarding_title.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});
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
              text: "Find your  Comfort Food here", width: 211),
          const SizedBox(
            height: 20,
          ),
          const OnBoardingSubTitle(
              text:
                  "Here You Can find a chef or dish for every taste and color. Enjoy!"),
          const SizedBox(
            height: 42,
          ),
          CustomButton(
            text: "Next",
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const OnBoarding3(),
              ));
            },
          )
        ],
      ),
    );
  }
}
