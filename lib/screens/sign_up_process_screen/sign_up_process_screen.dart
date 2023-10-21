import 'package:flutter/material.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/componants/custom_text_form_field.dart';

import '../../componants/app_bar_backword_icon.dart';

class SignUpProcessScreen extends StatelessWidget {
  const SignUpProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarBackWordIcon(
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
                child: Column(
                  children: [
                    const CustomTextFormField(hintText: "First Name"),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormField(hintText: "Last Name"),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormField(hintText: "Mobile Number"),
                    const SizedBox(
                      height: 220,
                    ),
                    CustomButton(text: "Next", onTap: () {})
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
