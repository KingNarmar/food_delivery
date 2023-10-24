import 'package:flutter/material.dart';

import '../../componants/success_notification.dart';

class SingUpSuccessScreen extends StatelessWidget {
  const SingUpSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SuccessNotification(
      gradientText: "Congrats!",
      normalText: "Your Profile Is Ready To Use",
      buttonText: "Try Order",
      navText: "verificationCode",
    );
  }
}
