import 'package:flutter/material.dart';
import 'package:food_delivery/componants/app_bar_backword_icon.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/componants/custom_text_form_field.dart';
import 'package:food_delivery/utl/assets.dart';
import 'package:food_delivery/utl/controllers.dart';
import 'package:food_delivery/utl/strings.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Image.asset(
              Assets.patternPic,
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
            SingleChildScrollView(
              child: Form(
                key: ResetPasswordControllers.key,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppBarBackWordIcon(
                        padding: EdgeInsets.symmetric(
                          horizontal: 11,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 11),
                        child: SizedBox(
                          width: 261,
                          child: Text(
                            'Reset your password here',
                            style: TextStyle(
                              color: Color(0xFF09041B),
                              fontSize: 25,
                              fontFamily: 'BentonSans Bold',
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 11),
                        child: SizedBox(
                          width: 224,
                          child: Text(
                            'Select which contact details should we use to reset your password',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'BentonSans Book',
                              fontWeight: FontWeight.w400,
                              height: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomTextFormField(
                        hintText: "New Password",
                        suffixIcon: const Image(
                          image: AssetImage(
                            Assets.showPasswordActiveIcon,
                          ),
                        ),
                        controller:
                            ResetPasswordControllers.newPasswordController,
                        validator: (newPassword) {
                          AppStrings.password = newPassword!;
                          if (newPassword == "") {
                            return "New Password Can't Be Empty";
                          } else if (newPassword.length < 6) {
                            return "Password must be more than 6 chrs";
                          }
                          return null;
                        },
                        onChanged: (newPassword) {
                          ResetPasswordControllers.key.currentState!.validate();
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        hintText: "Confirm Password",
                        suffixIcon: const Image(
                          image: AssetImage(
                            Assets.eyeIcon,
                          ),
                        ),
                        controller:
                            ResetPasswordControllers.confirmPasswordController,
                        validator: (confirmPassword) {
                          if (confirmPassword != AppStrings.password) {
                            return "Password not Match";
                          }
                          return null;
                        },
                        onChanged: (confirmPassword) {
                          ResetPasswordControllers.key.currentState!.validate();
                        },
                      ),
                      const SizedBox(
                        height: 290,
                      ),
                      Center(
                        child: CustomButton(
                          text: "Next",
                          onTap: () {
                            if (ResetPasswordControllers.key.currentState!
                                .validate()) {
                              Navigator.pushNamed(context, "resetPasswordDone");
                            }
                          },
                        ),
                      )
                    ],
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
