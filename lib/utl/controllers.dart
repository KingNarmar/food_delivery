import 'package:flutter/material.dart';

abstract class SignUpControllers {
  static final GlobalKey<FormState> key = GlobalKey();
  static final TextEditingController profileController =
      TextEditingController();
  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController passwordController =
      TextEditingController();
}

abstract class ResetPasswordControllers {
  static final TextEditingController newPasswordController =
      TextEditingController();
  static final TextEditingController confirmPasswordController =
      TextEditingController();
  static final GlobalKey<FormState> key = GlobalKey();
}

abstract class LoginScreenControllers {
  static final GlobalKey<FormState> key = GlobalKey();
  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController passwordController =
      TextEditingController();
}

abstract class SignUpProcessControllers {
  static final GlobalKey<FormState> key = GlobalKey();
  static final TextEditingController firstNameController =
      TextEditingController();
  static final TextEditingController lastNameController =
      TextEditingController();
  static final TextEditingController mobileController = TextEditingController();
}
