import 'package:flutter/material.dart';
import 'package:football/constant/constants.dart';
import 'package:sizer/sizer.dart';

import '../../../../Weidgets/MatchCardWeidget.dart';
import '../../../../Weidgets/MatchesPageViewWeidget.dart';
import '../../../../Weidgets/SmallMatchCard.dart';
import '../../../../Weidgets/outlinedContainer.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({super.key});

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  final TextEditingController _searchController = TextEditingController();
  int _selected = 0;
  selected(int number) {
    if (_selected != number) {
      setState(() {
        _selected = number;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Matchboard',
              style: TextStyle(
                  color: kTextWhiteColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
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
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => selected(0),
                  child: OutLinedBoxWidget(
                    title: 'all',
                    icon: Icons.align_horizontal_left_sharp,
                    selected: _selected == 0 ? true : false,
                  ),
                ),
                InkWell(
                  onTap: () => selected(1),
                  child: OutLinedBoxWidget(
                      title: 'Live',
                      icon: Icons.circle,
                      selected: _selected == 1 ? true : false),
                ),
                InkWell(
                  onTap: () => selected(2),
                  child: OutLinedBoxWidget(
                      title: 'Top',
                      icon: Icons.sports_baseball_outlined,
                      selected: _selected == 2 ? true : false),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            SizedBox(
              height: 25.h,
              child: PageView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const MatchesPageViewWeidget();
                  }),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text('Games',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 10.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: PageController(viewportFraction: 0.2),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Icon(
                      Icons.sports_baseball_outlined,
                      size: 20.w,
                      color: kUnselectedcolor,
                    );
                  }),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text('Live Matches',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 10.h,
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: PageController(viewportFraction: .5),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const SmallMatchCard();
                  }),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text('Matches',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
            ListView.builder(
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const MatchCardWeidget();
                }),
          ],
        ),
      ),
    ));
  }
}
