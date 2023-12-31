import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery/componants/app_bar_backword_icon.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/utl/assets.dart';
import 'package:food_delivery/utl/files.dart';

class UploadPreviewScreen extends StatelessWidget {
  const UploadPreviewScreen({super.key});

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
                    const SizedBox(
                      width: 264,
                      child: Text(
                        'Upload Your Photo Profile',
                        style: TextStyle(
                          color: Color(0xFF09041B),
                          fontSize: 25,
                          fontFamily: 'BentonSans Bold',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
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
                      height: 44,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          if (PhotoFile.image != null)
                            Container(
                              width: 251,
                              height: 260,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: FileImage(File(PhotoFile.image!.path)),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          if (PhotoFile.image == null)
                            Container(
                              width: 251,
                              height: 260,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  image: AssetImage(Assets.testPic),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          Positioned(
                            top: 25,
                            right: 15,
                            child: Image.asset(
                              Assets.closeIcon,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 166,
                    ),
                    Center(
                      child: CustomButton(
                        text: "Next",
                        onTap: () {
                          Navigator.pushNamed(context, "setLocation");
                        },
                      ),
                    )
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
