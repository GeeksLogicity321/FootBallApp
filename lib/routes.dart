import 'package:flutter/material.dart';
import 'package:football/Screens/BottomNavigationBarScreen.dart';
import 'package:football/Screens/BottomNavigationBarScreens/MatchPage/Matches/MatchDetailScreen.dart';
import 'package:football/Screens/BottomNavigationBarScreens/MatchPage/News/NewsDetailScreen.dart';

Map<String, WidgetBuilder> namedRoutes = {
  // '/': (context) => const SplashScreen(),
  BottomNavigationBarScreen.routenName: (context) =>
      const BottomNavigationBarScreen(),
  MatchDetailScreen.routeName: (context) => const MatchDetailScreen(),
  NewsDetailScreen.routeName: (context) => const NewsDetailScreen(),
  // SpecificTopicScreen.routename: (context) => const SpecificTopicScreen(),
  // TermsOfUseScreen.routeName: (context) => const TermsOfUseScreen(),
  // CopyRightScreen.routeName: (context) => const CopyRightScreen(),
  // PrivacyPolicyScreen.routeName: (context) => const PrivacyPolicyScreen(),
  // AboutUsScreen.routeName: (context) => const AboutUsScreen(),
  // AboutScreen.routeName: (context) => const AboutScreen(),
  // SpecificStoryScreen.routename: (context) => const SpecificStoryScreen(),
};
