import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen/home_screen.dart';
import 'package:food_delivery/screens/login_screen/login_screen.dart';
import 'package:food_delivery/screens/onBoarding1/on_boarding1.dart';
import 'package:food_delivery/screens/payment_method/payment_method_screen.dart';
import 'package:food_delivery/screens/reset_password_screen/reset_password_screen.dart';
import 'package:food_delivery/screens/set_location_screen/set_location_screen.dart';
import 'package:food_delivery/screens/sign_up_process_screen/sign_up_process_screen.dart';
import 'package:food_delivery/screens/sign_up_screen/sign_up_screen.dart';
import 'package:food_delivery/screens/singup_success/singup_success_screen.dart';
import 'package:food_delivery/screens/upload_photo_screen/upload_photo_screen.dart';
import 'package:food_delivery/screens/upload_preview_screen/upload_preview_screen.dart';
import 'package:food_delivery/screens/verification_code_screen/verification_code_screen.dart';
import 'package:food_delivery/screens/via_method/via_method_screen.dart';
import '../screens/onBoarding2/on_boarding2.dart';
import '../screens/reset_password_success_notification/reset_password_success_notification.dart';
import '../screens/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "splash": (context) => const SplashScreen(),
        "onBoarding1": (context) => const OnBoarding1(),
        "onBoarding2": (context) => const OnBoarding2(),
        "login": (context) => const LoginScreen(),
        "signUp": (context) => const SignUpScreen(),
        "signUpProcess": (context) => const SignUpProcessScreen(),
        "payment": (context) => const PaymentMethodScreen(),
        "uploadPhoto": (context) => const UploadPhotoScreen(),
        "uploadPreview": (context) => const UploadPreviewScreen(),
        "setLocation": (context) => const SetLocationScreen(),
        "singUpSuccess": (context) => const SingUpSuccessScreen(),
        "verificationCode": (context) => const VerificationCodeScreen(),
        "viaMethod": (context) => const ViaMethodScreen(),
        "resetPassword": (context) => const ResetPasswordScreen(),
        "resetPasswordDone": (context) =>
            const RestPasswordSuccessNotification(),
        "home": (context) => const HomeScreen()
      },
      initialRoute: "home",
    );
  }
}
