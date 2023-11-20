import 'package:flutter/material.dart';
import 'package:football/Screens/BottomNavigationBarScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Navigate();
  }

  void Navigate() async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator.pushReplacementNamed(
        context, BottomNavigationBarScreen.routenName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
