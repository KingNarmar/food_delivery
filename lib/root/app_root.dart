import 'package:flutter/material.dart';
import 'package:food_delivery/screens/login_page/login_page.dart';
import 'package:food_delivery/screens/onBoarding1/on_boarding1.dart';
import 'package:food_delivery/screens/sign_up_screen/sign_up_screen.dart';

import '../screens/onBoarding2/on_boarding2.dart';
import '../screens/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "splash": (context) => const SplashScreen(),
        "onBoarding1": (context) => const OnBoarding1(),
        "onBoarding2": (context) => const OnBoarding2(),
        "login": (context) => const LoginScreen(),
        "signUp": (context) => const SignUpScreen(),
      },
      initialRoute: "signUp",
    );
  }
}