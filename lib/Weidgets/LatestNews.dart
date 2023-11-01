import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LatestNewsWidget extends StatelessWidget {
  const LatestNewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Row(
        children: [
          SizedBox(
            height: 27.h,
            width: 40.w,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.w),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.darken),
                    fit: BoxFit.fitHeight,
                    image: const AssetImage(
                      'Assets/TB.png',
                    ),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.5.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('The Basics of Sports Betting'),
                    Text(
                      '2 hours ago',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 135, 130, 158),
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                  child: Container(
                    height: 14.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.w),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.7), BlendMode.darken),
                          fit: BoxFit.fill,
                          image: const AssetImage(
                            'Assets/TB.png',
                          ),
                        )),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 1.5.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('The Basics of Sports Betting'),
                          Text(
                            '2 hours ago',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 135, 130, 158),
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                  child: Container(
                    height: 14.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.w),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.7), BlendMode.darken),
                          fit: BoxFit.fill,
                          image: const AssetImage(
                            'Assets/TB.png',
                          ),
                        )),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 1.5.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('The Basics of Sports Betting'),
                          Text(
                            '2 hours ago',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 135, 130, 158),
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
