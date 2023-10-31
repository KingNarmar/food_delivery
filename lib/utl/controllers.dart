import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

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

abstract class BottomNavBarControllers {
  static final controller = PersistentTabController(initialIndex: 0);
}
