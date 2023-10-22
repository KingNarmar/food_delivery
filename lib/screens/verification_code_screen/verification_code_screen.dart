import 'package:flutter/material.dart';
import 'package:food_delivery/componants/app_bar_backword_icon.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/componants/custom_container.dart';
import 'package:food_delivery/utl/assets.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

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
              height: double.infinity,
              width: double.infinity,
            ),
            Padding(
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
                      width: 300,
                      height: 66,
                      child: Text(
                        'Enter 4-digit\nVerification code',
                        maxLines: 2,
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
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11),
                    child: SizedBox(
                      width: 239,
                      child: Text(
                        'Code send to +6282045**** . This code will expired in 01:30',
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
                    height: 38,
                  ),
                  const CustomContainer(
                    height: 103,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF09051C),
                            fontSize: 33,
                            fontFamily: 'BentonSans Medium',
                            fontWeight: FontWeight.w400,
                            height: 0.05,
                          ),
                        ),
                        Text(
                          '9',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF09051C),
                            fontSize: 33,
                            fontFamily: 'BentonSans Medium',
                            fontWeight: FontWeight.w400,
                            height: 0.05,
                          ),
                        ),
                        Text(
                          '2',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF09051C),
                            fontSize: 33,
                            fontFamily: 'BentonSans Medium',
                            fontWeight: FontWeight.w400,
                            height: 0.05,
                          ),
                        ),
                        Text(
                          '3',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF09051C),
                            fontSize: 33,
                            fontFamily: 'BentonSans Medium',
                            fontWeight: FontWeight.w400,
                            height: 0.05,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 322,
                  ),
                  Center(child: CustomButton(text: "Next", onTap: () {}))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
