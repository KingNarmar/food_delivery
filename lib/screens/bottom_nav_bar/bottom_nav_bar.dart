import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen/home_screen.dart';
import 'package:food_delivery/screens/upload_photo_screen/upload_photo_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavBarScreen extends StatelessWidget {
  BottomNavBarScreen({super.key});

  final _controller = PersistentTabController(initialIndex: 0);
  final List<Widget> screens = [const HomeScreen(), const UploadPhotoScreen()];
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: screens,
      controller: _controller,
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.home, color: Color(0xff38D682)),
          title: ("Home"),
          textStyle: const TextStyle(color: Colors.black),
          activeColorPrimary: const Color.fromARGB(255, 15, 217, 96),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.settings),
          title: ("Settings"),
          activeColorPrimary: const Color.fromARGB(255, 15, 217, 96),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ],
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1,
    );
  }
}
