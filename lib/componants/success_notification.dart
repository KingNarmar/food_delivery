import 'package:flutter/material.dart';

import '../utl/assets.dart';
import 'custom_button.dart';
import 'linear_gradient_text.dart';

class SuccessNotification extends StatelessWidget {
  const SuccessNotification({
    super.key,
    required this.gradientText,
    required this.normalText,
    required this.buttonText,
    required this.navText,
  });

  final String gradientText;
  final String normalText;
  final String buttonText;
  final String navText;
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
                  LinearGradientText(
                    text: gradientText,
                    fontSize: 30,
                    fontFamily: 'BentonSans Bold',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    normalText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF09041B),
                      fontSize: 23,
                      fontFamily: 'BentonSans Bold',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 192,
                  ),
                  CustomButton(
                      text: buttonText,
                      onTap: () {
                        Navigator.pushReplacementNamed(context, navText);
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
