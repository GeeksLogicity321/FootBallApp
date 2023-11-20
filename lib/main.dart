import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:football/Providers/CommentaryProvider.dart';
import 'package:football/Providers/EventProvider.dart';
import 'package:football/Providers/LiveMatchesProvider.dart';
import 'package:football/Providers/NewsDetailProvider.dart';
import 'package:football/Providers/NewsProvider.dart';
import 'package:football/Providers/TeamProvider.dart';
import 'package:football/Screens/BottomNavigationBarScreen.dart';
import 'package:football/Screens/SplashScreen.dart';
import 'package:football/constant/themes.dart';
import 'package:football/routes.dart';

import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<LiveMatchesProvider>(
              create: (context) => LiveMatchesProvider()),
          ChangeNotifierProvider<NewsProvider>(
              create: (context) => NewsProvider()),
          ChangeNotifierProvider<TeamProvider>(
              create: (context) => TeamProvider()),
          ChangeNotifierProvider<CommentaryProvider>(
              create: (context) => CommentaryProvider()),
          ChangeNotifierProvider<EventProvider>(
              create: (context) => EventProvider()),
          ChangeNotifierProvider<NewsDetailProvider>(
              create: (context) => NewsDetailProvider()),
        ],
        child: MaterialApp(
          theme: CustomTheme().lightTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: SplashScreen.routeName,
          routes: namedRoutes,
        ),
      );
    });
  }
}
