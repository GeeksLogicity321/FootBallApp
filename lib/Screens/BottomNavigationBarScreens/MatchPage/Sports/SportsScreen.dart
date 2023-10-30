import 'package:flutter/material.dart';
import '../../../../constant/constants.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondaryColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Sports',
          ),
        ),
        body: const Center(
          child: Text('Sports'),
        ));
  }
}
