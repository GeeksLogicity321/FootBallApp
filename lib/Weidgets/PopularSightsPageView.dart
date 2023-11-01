import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constant/constants.dart';

class PopularSightPagePageView extends StatelessWidget {
  const PopularSightPagePageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: PageController(viewportFraction: 0.6),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 2.w),
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(3.w)),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(3.w),
                    child: Image.asset('Assets/realistic.jpg')),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Text('How To Get Started With Sports Betting',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 217, 212, 255),
                          fontSize: 13.sp)),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    children: [
                      Text(
                        'Dec 30,4.30pm',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 96, 91, 122),
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.message_outlined,
                        size: 4.w,
                        color: const Color.fromARGB(255, 96, 91, 122),
                      ),
                      SizedBox(
                        width: 0.5.w,
                      ),
                      Text(
                        '10',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 96, 91, 122),
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Icon(
                        Icons.favorite_border,
                        size: 4.w,
                        color: const Color.fromARGB(255, 96, 91, 122),
                      ),
                      SizedBox(
                        width: 0.5.w,
                      ),
                      Text(
                        '10',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 96, 91, 122),
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          );
        });
  }
}
