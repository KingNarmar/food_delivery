import 'package:flutter/material.dart';
import 'package:food_delivery/utl/assets.dart';

import '../../componants/linear_gradient_text.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
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
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Login To Your Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF09041B),
                    fontSize: 20,
                    fontFamily: 'BentonSans Bold',
                    fontWeight: FontWeight.w400,
                    height: 0.07,
                  ),
                ),
                Form(child: TextFormField())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
