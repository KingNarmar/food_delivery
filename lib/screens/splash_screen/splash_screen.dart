import 'package:flutter/material.dart';
import '../../componants/linear_gradient_text.dart';
import '../../utl/assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, "onBoarding1");
      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
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
    );
  }
}
