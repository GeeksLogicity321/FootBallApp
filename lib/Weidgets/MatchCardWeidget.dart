import 'package:flutter/material.dart';
import 'package:football/Providers/EventProvider.dart';
import 'package:football/Providers/LiveMatchesProvider.dart';
import 'package:football/Providers/TeamProvider.dart';
import 'package:football/Weidgets/outlinedContainer.dart';
import 'package:football/constant/constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../Providers/CommentaryProvider.dart';
import '../Screens/BottomNavigationBarScreens/MatchPage/Matches/MatchDetailScreen.dart';

class MatchCardWeidget extends StatelessWidget {
  const MatchCardWeidget({
    super.key,
    required this.matchid,
    required this.team1Logo,
    required this.team2Logo,
    required this.team1Score,
    required this.team2Score,
    required this.team1Name,
    required this.team2Name,
    this.title,
  });

  final String matchid;
  final String? title;
  final String team1Name;
  final String team2Name;
  final String team1Logo;
  final String team2Logo;
  final dynamic team1Score;
  final dynamic team2Score;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.pushNamed(context, MatchDetailScreen.routeName);
        context.read<EventProvider>().setSelected(matchid, context);
        context.read<CommentaryProvider>().setSelected(matchid, context);
      },
      child: Container(
        margin: EdgeInsets.only(top: 1.h),
        padding: EdgeInsets.symmetric(vertical: 2.h),
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(2.w)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.h, bottom: 2.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title ?? '',
                  style: Theme.of(context).textTheme.bodySmall!,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Image.network(
                        team1Logo,
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        team1Name,
                        style: Theme.of(context).textTheme.bodySmall!,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      OutLinedBoxWidget(title: '2.42')
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Text('Live'),
                    Text(
                      '${team1Score.toString()}:${team2Score.toString()}',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              color: kothercolor, fontWeight: FontWeight.bold),
                    ),
                    const Text('21:16')
                  ],
                ),
                Flexible(
                  child: Column(
                    children: [
                      Image.network(
                        team2Logo,
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        team2Name,
                        style: Theme.of(context).textTheme.bodySmall!,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      OutLinedBoxWidget(title: '2.42')
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
