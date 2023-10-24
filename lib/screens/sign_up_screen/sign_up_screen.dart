import 'package:flutter/material.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/componants/custom_text_form_field.dart';
import 'package:food_delivery/componants/linear_gradient_text.dart';
import 'package:food_delivery/utl/assets.dart';
import 'package:food_delivery/utl/controllers.dart';
import '../../componants/check_list_icon.dart';
import '../../componants/small_opacity_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                child: Form(
                  key: SignUpControllers.key,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Assets.logoPic),
                        const LinearGradientText(
                          text: "FoodNinja",
                          fontSize: 40,
                          fontFamily: "Viga",
                        ),
                        const Text(
                          "Deliever Favorite Food",
                          style: TextStyle(
                            fontFamily: Assets.interFont,
                            fontSize: 13,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF09051C),
                          ),
                        ),
                        const SizedBox(
                          height: 65,
                        ),
                        const Text(
                          'Sign Up For Free',
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
                        CustomTextFormField(
                          hintText: "Anamwp . . |",
                          prefix: Image.asset(Assets.profileIcon),
                          controller: SignUpControllers.profileController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Profile Name Can't be Empty";
                            } else if (value.length < 6) {
                              return "Profile Name should be more than 6 chr";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            SignUpControllers.key.currentState!.validate();
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        CustomTextFormField(
                          hintText: "Email",
                          prefix: Image.asset(Assets.emailIcon),
                          controller: SignUpControllers.emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Email Can't be Empty";
                            } else if (!value.contains("@") ||
                                !value.contains(".com")) {
                              return "Email format is wrong";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            SignUpControllers.key.currentState!.validate();
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        CustomTextFormField(
                          hintText: "Password",
                          prefix: Image.asset(Assets.passwordIcom),
                          suffixIcon: Image.asset(Assets.showPasswordIcon),
                          controller: SignUpControllers.passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password Can't be Empty";
                            } else if (value.length < 6) {
                              return "Password should be more than 6 chr";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            SignUpControllers.key.currentState!.validate();
                          },
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        const Row(
                          children: [
                            CheckListIcon(),
                            SmallOpacityText(
                              text: "Keep Me Signed In",
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        const Row(
                          children: [
                            CheckListIcon(),
                            SmallOpacityText(
                              text: "Email Me About Special Pricing",
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 44,
                        ),
                        CustomButton(
                          text: "Create Account",
                          onTap: () {
                            if (SignUpControllers.key.currentState!
                                .validate()) {
                              Navigator.pushNamed(context, "signUpProcess");
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, "login");
                          },
                          child: const LinearGradientText(
                              text: "already have an account?",
                              fontSize: 12,
                              fontFamily: Assets.bentonSansBook),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
