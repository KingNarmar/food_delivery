import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery/componants/app_bar_backword_icon.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/componants/custom_container.dart';
import 'package:food_delivery/utl/assets.dart';
import 'package:food_delivery/utl/files.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhotoScreen extends StatelessWidget {
  const UploadPhotoScreen({super.key});

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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
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
                      height: 66,
                      width: 246,
                      child: Text(
                        'Upload Your Photo Profile',
                        style: TextStyle(
                            color: Color(0xFF09041B),
                            fontSize: 25,
                            fontFamily: 'BentonSans Bold',
                            fontWeight: FontWeight.w400,
                            height: 1.5),
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
                    GestureDetector(
                      onTap: () async {
                        ImagePicker picker = ImagePicker();
                        final XFile? file =
                            await picker.pickImage(source: ImageSource.gallery);
                        PhotoFile.image = File(file!.path);
                      },
                      child: const CustomContainer(
                        height: 129,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(Assets.galaryPic),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'From Gallery',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'BentonSans Bold',
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () async {
                        ImagePicker picker = ImagePicker();
                        final XFile? file =
                            await picker.pickImage(source: ImageSource.camera);
                        PhotoFile.image = File(file!.path);
                      },
                      child: const CustomContainer(
                        height: 129,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(Assets.cameraPic),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Take Photo',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'BentonSans Bold',
                                fontWeight: FontWeight.w400,
                                height: 0.13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 165,
                    ),
                    Center(
                        child: CustomButton(
                            text: "Next",
                            onTap: () {
                              Navigator.pushNamed(context, "uploadPreview");
                            }))
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
