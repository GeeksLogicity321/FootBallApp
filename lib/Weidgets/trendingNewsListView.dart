import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constant/constants.dart';

class TrendingNewsListView extends StatelessWidget {
  const TrendingNewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
            height: 10.h,
            width: 40.w,
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(3.w)),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(2.w),
                  child: Image.asset('Assets/female.jpg'),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Text('Make Money Making Sports Bets',
                              maxLines: 2,
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 217, 212, 255),
                                  fontSize: 13.sp)),
                        ),
                        Text(
                          'Dec 30,4.30pm',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 96, 91, 122),
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
