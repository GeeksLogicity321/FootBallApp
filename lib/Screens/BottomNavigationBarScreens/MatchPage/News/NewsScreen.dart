import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../Weidgets/HeadLineWeidget.dart';
import '../../../../Weidgets/LatestNews.dart';
import '../../../../Weidgets/PopularSightsPageView.dart';
import '../../../../Weidgets/SearchField.dart';
import '../../../../Weidgets/VideosPageView.dart';
import '../../../../Weidgets/trendingNewsListView.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

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
            child: SearchField(),
          ),
          SizedBox(
            height: 1.h,
          ),
          HeadLineWidget(
            title: 'Popular Sights',
            icon: Icons.star_border,
            showmore: true,
          ),
          SizedBox(
            height: 28.h,
            child: const PopularSightPagePageView(),
          ),
          HeadLineWidget(
            title: 'Latest News',
            showmore: true,
          ),
          const LatestNewsWidget(),
          HeadLineWidget(
            title: 'Videos',
            showmore: true,
          ),
          SizedBox(
            height: 22.h,
            child: const VideosPagaView(),
          ),
          HeadLineWidget(
            title: 'Trending News',
            showmore: true,
          ),
          const TrendingNewsListView(),
        ],
      ),
    ));
  }
}
