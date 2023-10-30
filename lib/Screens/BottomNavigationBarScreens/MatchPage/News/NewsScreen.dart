import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../Weidgets/HeadLineWeidget.dart';
import '../../../../constant/constants.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({super.key});
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Text(
              'News',
              style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w500,
                  fontSize: 30.sp),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: SizedBox(
              height: 5.h,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  // Add a clear button to the search bar
                  // fillColor:,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
                  // Add a search icon or button to the search bar
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: kTextHintColor, width: kWidthOfInputBoarder),
                      borderRadius: kBorderRadiusAll),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          HeadLineWidget(
            title: 'Popular Sights',
            icon: Icons.star_border,
          ),
          SizedBox(
            height: 28.h,
            child: PageView.builder(
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
                                  color:
                                      const Color.fromARGB(255, 217, 212, 255),
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
                                    color:
                                        const Color.fromARGB(255, 96, 91, 122),
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
                                    color:
                                        const Color.fromARGB(255, 96, 91, 122),
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
                                    color:
                                        const Color.fromARGB(255, 96, 91, 122),
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
                }),
          ),
          HeadLineWidget(
            title: 'Latest News',
          ),
          Padding(
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
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.h),
                        child: ShaderMask(
                          blendMode: BlendMode.darken,
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [Colors.black38, Colors.black87],
                          ).createShader(bounds),
                          child: Container(
                            height: 14.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.w),
                                image: const DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage(
                                    'Assets/TB.png',
                                  ),
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.h),
                        child: ShaderMask(
                          blendMode: BlendMode.darken,
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [Colors.black38, Colors.black87],
                          ).createShader(bounds),
                          child: Container(
                            height: 14.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.w),
                                image: const DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage(
                                    'Assets/TB.png',
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          HeadLineWidget(title: 'Videos'),
          SizedBox(
            height: 22.h,
            child: PageView.builder(
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
                                  color:
                                      const Color.fromARGB(255, 217, 212, 255),
                                  fontSize: 13.sp)),
                        ),
                        const Spacer(),
                      ],
                    ),
                  );
                }),
          ),
          HeadLineWidget(title: 'Trending News'),
          ListView.builder(
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
                                        color: const Color.fromARGB(
                                            255, 217, 212, 255),
                                        fontSize: 13.sp)),
                              ),
                              Text(
                                'Dec 30,4.30pm',
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 96, 91, 122),
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
              }),
        ],
      ),
    ));
  }
}
