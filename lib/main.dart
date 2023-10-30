import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:football/Screens/BottomNavigationBarScreen.dart';
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
      return MaterialApp(
        theme: CustomTheme().lightTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: BottomNavigationBarScreen.routenName,
        routes: namedRoutes,
      );
    });
  }
}
