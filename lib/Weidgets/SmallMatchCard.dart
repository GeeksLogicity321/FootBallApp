import 'package:flutter/material.dart';
import 'package:football/Providers/TeamProvider.dart';
import 'package:football/Screens/BottomNavigationBarScreens/MatchPage/Matches/MatchDetailScreen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../constant/constants.dart';

class SmallMatchCard extends StatelessWidget {
  const SmallMatchCard({
    super.key,
    required this.leagueId,
    required this.team1Logo,
    required this.team2Logo,
    required this.team1Score,
    required this.team2Score,
  });

  final String leagueId;
  final String team1Logo;
  final String team2Logo;
  final dynamic team1Score;
  final dynamic team2Score;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, MatchDetailScreen.routeName);
        context.read<TeamProvider>().setSelected(leagueId, context);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2.w),
        height: 6.h,
        decoration: const BoxDecoration(color: kSecondaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              team1Logo,
              height: 5.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('VS', style: Theme.of(context).textTheme.bodySmall!),
                Text(
                  '${team1Score.toString()}:${team2Score.toString()}',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: kothercolor, fontWeight: FontWeight.bold),
                ),
                Text('21:16', style: Theme.of(context).textTheme.bodySmall!)
              ],
            ),
            Image.network(
              team2Logo,
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}
