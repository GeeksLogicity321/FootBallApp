import 'package:flutter/material.dart';
import 'package:football/Providers/TeamProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class PlayersScreen extends StatelessWidget {
  const PlayersScreen({super.key});
  static const routeName = 'PlayersScreen';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Expanded(
            //       child: Image.asset(
            //         'Assets/pngegg.png',
            //         // height: 10.h,
            //       ),
            //     ),
            //     Expanded(
            //       child: Image.asset(
            //         'Assets/pngegg.png',
            //         // height: 10.h,
            //       ),
            //     ),
            //   ],
            // ),
            Consumer<TeamProvider>(builder: (_, teamProvider, __) {
              if (teamProvider.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (teamProvider.team1.isEmpty ||
                  teamProvider.team2.isEmpty) {
                return Center(
                  child: Text('something went wrong please try again'),
                );
              } else {
                return Row(
                  children: [
                    Flexible(
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: teamProvider.team1.length,
                          itemBuilder: (context, index) {
                            final currentindexProvider =
                                teamProvider.team1[index];
                            return SizedBox(
                              height: 10.h,
                              child: PlayersTiles(
                                title:
                                    '${currentindexProvider.firstName}  ${currentindexProvider.lastName}',
                                shirtNum: currentindexProvider.shirtNumber ?? 0,
                              ),
                            );
                          }),
                    ),
                    Flexible(
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: teamProvider.team1.length,
                          itemBuilder: (context, index) {
                            final currentindexProvider =
                                teamProvider.team1[index];
                            return SizedBox(
                              height: 10.h,
                              child: PlayersTiles(
                                title:
                                    '${currentindexProvider.firstName}  ${currentindexProvider.lastName}',
                                shirtNum: currentindexProvider.shirtNumber ?? 0,
                              ),
                            );
                          }),
                    ),
                  ],
                );
              }
            })
          ],
        ),
      ),
    );
  }
}

class PlayersTiles extends StatelessWidget {
  PlayersTiles({super.key, this.title, this.shirtNum});

  String? title;
  int? shirtNum;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Image.asset('Assets/pngwing.com.png'),
            Positioned(
              left: 9.1.w,
              top: 2.h,
              child: Text(
                shirtNum.toString() ?? '',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Flexible(child: Text(title ?? ''))
      ],
    );
  }
}
