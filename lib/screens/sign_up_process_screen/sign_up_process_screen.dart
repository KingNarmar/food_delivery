import 'package:flutter/material.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/componants/custom_text_form_field.dart';
import 'package:food_delivery/utl/assets.dart';
import 'package:food_delivery/utl/controllers.dart';

import '../../componants/app_bar_backword_icon.dart';

class SignUpProcessScreen extends StatelessWidget {
  const SignUpProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          children: [
            Image.asset(
              Assets.patternPic,
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBarBackWordIcon(
                      padding: const EdgeInsets.only(left: 11),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 11),
                      child: SizedBox(
                        height: 66,
                        width: 246,
                        child: Text(
                          'Fill in your bio to get started',
                          style: TextStyle(
                            color: Color(0xFF09041B),
                            fontSize: 25,
                            fontFamily: 'BentonSans Bold',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 11),
                      child: SizedBox(
                        width: 239,
                        height: 44,
                        child: Text(
                          'This data will be displayed in your account profile for security',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'BentonSans Book',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: SignUpProcessControllers.key,
                      child: Column(
                        children: [
                          CustomTextFormField(
                            hintText: "First Name",
                            controller:
                                SignUpProcessControllers.firstNameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "First Name Can't be Empty";
                              } else if (value.length < 6) {
                                return "First Name should be more than 6 chr";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              SignUpProcessControllers.key.currentState!
                                  .validate();
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextFormField(
                            hintText: "Last Name",
                            controller:
                                SignUpProcessControllers.lastNameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Last Name Can't be Empty";
                              } else if (value.length < 6) {
                                return "Last Name should be more than 6 chr";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              SignUpProcessControllers.key.currentState!
                                  .validate();
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextFormField(
                            hintText: "Mobile Number",
                            controller:
                                SignUpProcessControllers.mobileController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Mobile Number Can't be Empty";
                              } else if (value.length < 11) {
                                return "Mobile Number should be more than 11 chr";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              SignUpProcessControllers.key.currentState!
                                  .validate();
                            },
                          ),
                          const SizedBox(
                            height: 220,
                          ),
                          CustomButton(
                              text: "Next",
                              onTap: () {
                                if (SignUpProcessControllers.key.currentState!
                                    .validate()) {
                                  Navigator.pushNamed(context, "payment");
                                }
                              })
                        ],
                      ),
                    ),
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
