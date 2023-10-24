import 'package:flutter/material.dart';
import 'package:food_delivery/componants/success_notification.dart';

class RestPasswordSuccessNotification extends StatelessWidget {
  const RestPasswordSuccessNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return const SuccessNotification(
        gradientText: "Congrats!",
        normalText: "Password reset succesful",
        buttonText: "Back",
        navText: "resetPassword");
  }
}
