import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constant/constants.dart';

class MatchesPageViewWeidget extends StatelessWidget {
  const MatchesPageViewWeidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 25.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          height: 20.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: kSecondaryColor, borderRadius: BorderRadius.circular(4.w)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Make Bets Profitably',
                  style: TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold),
                ),
                Flexible(
                  child: Text(
                    'Pridict in multiple Matches and win upto 1,00,000',
                    style: TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
        ),
        Positioned(
          right: 0.5.w,
          top: 0,
          child: Image.asset(
            'Assets/pngwing.com.png',
            width: 40.w,
          ),
        ),
      ],
    );
  }
}
