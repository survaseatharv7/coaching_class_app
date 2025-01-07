import 'package:coaching_class_app/pages/drawer_page.dart';
import 'package:coaching_class_app/pages/landing_page.dart';
import 'package:coaching_class_app/pages/notification_page.dart';
import 'package:coaching_class_app/pages/profile_page.dart';
import 'package:coaching_class_app/pages/vhn_page.dart';

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  ScrollController _scrollController1 = ScrollController();
  ScrollController _scrollController2 = ScrollController();

  List<Widget> _buildScreens() {
    return [
      LandingPage(),
      MyApp(),
      NotificationPage(),
      ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        scrollController: _scrollController1,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const LandingPage(),
            "/second": (final context) => MyApp(),
            "/third": (final context) => const ProfilePage(),
            "/Fourth": (final context) => NotificationPage(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home_work),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        scrollController: _scrollController2,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const LandingPage(),
            "/second": (final context) => MyApp(),
            "/third": (final context) => const ProfilePage(),
            "/Fourth": (final context) => NotificationPage(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.notification_add),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        scrollController: _scrollController2,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const LandingPage(),
            "/second": (final context) => MyApp(),
            "/third": (final context) => const ProfilePage(),
            "/Fourth": (final context) => NotificationPage(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        scrollController: _scrollController2,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => const LandingPage(),
            "/second": (final context) => MyApp(),
            "/third": (final context) => const ProfilePage(),
            "/Fourth": (final context) => NotificationPage(),
          },
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: Color.fromRGBO(236, 250, 251, 1),
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle:
          NavBarStyle.style3, // Choose the nav bar style with this property
    );
  }
}
