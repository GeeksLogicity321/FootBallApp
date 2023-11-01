import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constant/constants.dart';

class VideosPagaView extends StatelessWidget {
  const VideosPagaView({
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
            // width: ÷,
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(3.w),
                    child: Image.asset('Assets/TB.png')),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Text('Make Money Making Sports Bets',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 217, 212, 255),
                          fontSize: 13.sp)),
                ),
                const Spacer(),
              ],
            ),
          );
        });
  }
}
