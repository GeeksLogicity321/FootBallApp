import 'package:flutter/material.dart';
import 'package:football/Screens/BottomNavigationBarScreens/MatchPage/InPay/InPayScreen.dart';
import 'package:football/Screens/BottomNavigationBarScreens/MatchPage/Matches/MatchesScreen.dart';
import 'package:football/Screens/BottomNavigationBarScreens/MatchPage/Sports/SportsScreen.dart';
import 'package:football/Screens/BottomNavigationBarScreens/MatchPage/Statistics/StatisticScreen.dart';
import 'package:sizer/sizer.dart';

import '../constant/constants.dart';
import 'BottomNavigationBarScreens/MatchPage/News/NewsScreen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});
  static const routenName = 'bottomNavigationBarScreen';

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screensList = [
      const MatchesScreen(),
      const SportsScreen(),
      const InPayScreen(),
      NewsScreen(),
      const StatisticScreen(),
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircleAvatar(
            backgroundColor: kothercolor,
            radius: 3.w,
            child: const Icon(
              Icons.add,
              color: kIconcolor,
            ),
          ),
          SizedBox(
            width: 1.w,
          ),
          Text(
            '299',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(
            width: 1.w,
          ),
          CircleAvatar(
            backgroundColor: kothercolor,
            radius: 4.w,
            child: const Icon(Icons.person),
          ),
        ],
      ),
      // backgroundColor: darkPurpleColor,
      body: IndexedStack(
        index: currentIndex,
        children: screensList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          // Home Tab
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            activeIcon: Icon(
              Icons.home,
            ),
            label: 'Matches',
            tooltip: 'Matches',
          ),

          // Matches Tab
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_cricket,
            ),
            activeIcon: Icon(
              Icons.sports_cricket,
            ),
            label: 'Sports',
            tooltip: 'Sports',
          ),

          // Inpay Tab
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on_outlined,
            ),
            activeIcon: Icon(
              Icons.monetization_on_outlined,
            ),
            label: 'Inpay',
            tooltip: 'Inpay',
          ),

          // News Tab
          BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper,
            ),
            activeIcon: Icon(
              Icons.newspaper,
            ),
            label: 'News',
            tooltip: 'News',
          ),

          // More Tab
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pie_chart,
            ),
            activeIcon: Icon(
              Icons.pie_chart,
            ),
            label: 'Statistics',
            tooltip: 'Statistics',
          ),
        ],
      ),
    );
  }
}
