import 'package:flutter/material.dart';
import 'package:food_delivery/componants/app_bar_backword_icon.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/componants/custom_container.dart';
import 'package:food_delivery/utl/assets.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});

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
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBarBackWordIcon(
                      padding: EdgeInsets.zero,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Set Your Location ',
                      style: TextStyle(
                        color: Color(0xFF09041B),
                        fontSize: 25,
                        fontFamily: 'BentonSans Bold',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 239,
                      child: Text(
                        'This data will be displayed in your account profile for security',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'BentonSans Book',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomContainer(
                      height: 160,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 11, top: 20),
                                child: CircleAvatar(
                                  backgroundColor: Color(0xFFFFE14D),
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Image(
                                      image: AssetImage(
                                        Assets.locationIcon,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  'Your Location',
                                  style: TextStyle(
                                    color: Color(0xFF09041B),
                                    fontSize: 15,
                                    fontFamily: 'BentonSans Medium',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 33,
                          ),
                          CustomContainer(
                            color: Color(0xFFF6F6F6),
                            height: 57,
                            child: SizedBox(
                              width: 91,
                              height: 14.25,
                              child: Center(
                                child: Text(
                                  'Set Location',
                                  style: TextStyle(
                                    color: Color(0xFF09051C),
                                    fontSize: 20,
                                    fontFamily: 'Rubik',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 328,
                    ),
                    Center(child: CustomButton(text: "Next", onTap: () {}))
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
