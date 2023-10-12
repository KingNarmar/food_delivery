import 'package:flutter/material.dart';
import '../../utl/assets.dart';
import '../onBoarding2/on_boarding2.dart';
import 'widgets/linear_gradient_text.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});
  @override
  Widget build(BuildContext context) {
    // Future.delayed(
    //   const Duration(seconds: 3),
    //   () {
    //     Navigator.of(context).pushReplacement(MaterialPageRoute(
    //       builder: (context) => const OnBoarding2(),
    //     ));
    //   },
    // );
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const OnBoarding2(),
          ));
        },
        child: Stack(children: [
          Image.asset(
            Assets.patternPic,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.logoPic),
                const LinearGradientText(),
                const Text(
                  "Deliever Favorite Food",
                  style: TextStyle(
                    fontFamily: Assets.interFont,
                    fontSize: 13,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
