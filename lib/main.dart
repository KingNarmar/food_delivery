import 'package:flutter/material.dart';
import 'package:food_delivery/pages/on_boarding1/on_boarding1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoarding1(),
    );
  }
}
