import 'package:flutter/material.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/utl/assets.dart';

import '../../componants/custom_list_tile.dart';
import '../../componants/custom_text_form_field.dart';
import '../../componants/linear_gradient_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Assets.logoPic),
                    const LinearGradientText(
                        text: "FoodNinja", fontFamily: "Viga", fontSize: 40),
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
                    const SizedBox(
                      height: 40,
                    ),
                    const CustomTextFormField(hintText: "Email"),
                    const SizedBox(
                      height: 12,
                    ),
                    const CustomTextFormField(hintText: "Password"),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Or Continue With",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: Assets.bentonSansBoldFont,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        CustomListTile(
                          icon: Assets.facebookIcon,
                          text: "Facebook",
                        ),
                        SizedBox(
                          width: 21,
                        ),
                        CustomListTile(
                          icon: Assets.googleIcon,
                          text: "Google",
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const LinearGradientText(
                        text: "Forgot Your Password?",
                        fontSize: 12,
                        fontFamily: Assets.bentonSansBook),
                    const SizedBox(
                      height: 36,
                    ),
                    CustomButton(text: "Login", onTap: () {})
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
