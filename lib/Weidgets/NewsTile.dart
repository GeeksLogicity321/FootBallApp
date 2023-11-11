import 'package:flutter/material.dart';
import 'package:football/Providers/NewsDetailProvider.dart';
import 'package:football/Screens/BottomNavigationBarScreens/MatchPage/News/NewsDetailScreen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../constant/constants.dart';
import '../utilities/commonfunctions.dart';

class NewsWidget extends StatelessWidget {
  NewsWidget({
    super.key,
    this.image,
    this.time,
    this.title,
    required this.slug,
  });
  String slug;
  String? title;
  int? time;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
      height: 10.h,
      width: 40.w,
      decoration: BoxDecoration(
          color: kSecondaryColor, borderRadius: BorderRadius.circular(3.w)),
      child: InkWell(
        onTap: () {
          context.read<NewsDetailProvider>().setSelected(slug, context);
          Navigator.pushNamed(context, NewsDetailScreen.routeName);
        },
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(2.w),
                child: image == null
                    ? Image.asset('Assets/female.jpg')
                    : Image.network(image!)),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Text(title ?? '',
                          maxLines: 2,
                          style:
                              TextStyle(color: kPrimaryColor, fontSize: 13.sp)),
                    ),
                    Text(
                      EpochToDate(time!),
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
      ),
    );
  }
}
