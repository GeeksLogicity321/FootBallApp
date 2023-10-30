import 'package:flutter/material.dart';
import 'package:football/Screens/BottomNavigationBarScreen.dart';

Map<String, WidgetBuilder> namedRoutes = {
  // '/': (context) => const SplashScreen(),
  BottomNavigationBarScreen.routenName: (context) =>
      const BottomNavigationBarScreen(),
  // MatchStatusScreen.routeName: (context) => const MatchStatusScreen(),
  // SpecificCatagoryScreen.routename: (context) => const SpecificCatagoryScreen(),
  // SpecificTopicScreen.routename: (context) => const SpecificTopicScreen(),
  // TermsOfUseScreen.routeName: (context) => const TermsOfUseScreen(),
  // CopyRightScreen.routeName: (context) => const CopyRightScreen(),
  // PrivacyPolicyScreen.routeName: (context) => const PrivacyPolicyScreen(),
  // AboutUsScreen.routeName: (context) => const AboutUsScreen(),
  // AboutScreen.routeName: (context) => const AboutScreen(),
  // SpecificStoryScreen.routename: (context) => const SpecificStoryScreen(),
};
