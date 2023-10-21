import 'package:flutter/material.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/utl/assets.dart';

import '../../componants/on_boarding_subtitle.dart';
import '../../componants/on_boarding_title.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                Navigator.pushReplacementNamed(context, "onBoarding2");
              },
            )
          ],
        ),
      ),
    );
  }
}
