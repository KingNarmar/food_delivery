import 'package:flutter/material.dart';
import 'package:food_delivery/componants/app_bar_backword_icon.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/componants/custom_container.dart';
import 'package:food_delivery/utl/assets.dart';

class ViaMethodScreen extends StatelessWidget {
  const ViaMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
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
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Color(0xFF09041B),
                        fontSize: 25,
                        fontFamily: 'BentonSans Bold',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                    height: 20,
                  ),
                  const CustomContainer(
                    height: 105,
                    child: Padding(
                      padding: EdgeInsets.all(23),
                      child: ListTile(
                        leading: Image(
                          image: AssetImage(
                            Assets.messageIcon,
                          ),
                        ),
                        title: Text(
                          'Via sms:',
                          style: TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 16,
                            fontFamily: 'BentonSans Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          '**** **** 4235',
                          style: TextStyle(
                            color: Color(0xFF09051C),
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomContainer(
                    height: 105,
                    child: Padding(
                      padding: EdgeInsets.all(23),
                      child: ListTile(
                        leading: Image(
                          image: AssetImage(
                            Assets.emailIconViaMethodScreen,
                          ),
                        ),
                        title: Text(
                          'Via sms:',
                          style: TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 16,
                            fontFamily: 'BentonSans Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          '**** @Gmail',
                          style: TextStyle(
                            color: Color(0xFF09051C),
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 269,
                  ),
                  Center(child: CustomButton(text: "Next", onTap: () {}))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
