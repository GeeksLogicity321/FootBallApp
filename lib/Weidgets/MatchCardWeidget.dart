import 'package:flutter/material.dart';
import 'package:football/Weidgets/outlinedContainer.dart';
import 'package:football/constant/constants.dart';
import 'package:sizer/sizer.dart';

class MatchCardWeidget extends StatelessWidget {
  const MatchCardWeidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                'Football Championship League',
                style: Theme.of(context).textTheme.bodySmall!,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    'Assets/1.png',
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text('Splash FC',
                      style: Theme.of(context).textTheme.bodySmall!),
                  SizedBox(
                    height: 3.h,
                  ),
                  OutLinedBoxWidget(title: '2.42')
                ],
              ),
              Column(
                children: [
                  const Text('Live'),
                  Text(
                    '0:0',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: kothercolor, fontWeight: FontWeight.bold),
                  ),
                  const Text('21:16')
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'Assets/pngegg.png',
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text('Splash FC',
                      style: Theme.of(context).textTheme.bodySmall!),
                  SizedBox(
                    height: 3.h,
                  ),
                  OutLinedBoxWidget(title: '2.42')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
