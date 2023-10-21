import 'package:flutter/material.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/componants/linear_gradient_text.dart';
import 'package:food_delivery/utl/assets.dart';

class SingUpSuccessScreen extends StatelessWidget {
  const SingUpSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Image.asset(
              Assets.patternPic,
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.donePic,
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const LinearGradientText(
                    text: "Congrats!",
                    fontSize: 30,
                    fontFamily: 'BentonSans Bold',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Your Profile Is Ready To Use',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF09041B),
                      fontSize: 23,
                      fontFamily: 'BentonSans Bold',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 192,
                  ),
                  CustomButton(text: "Try Order", onTap: () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
