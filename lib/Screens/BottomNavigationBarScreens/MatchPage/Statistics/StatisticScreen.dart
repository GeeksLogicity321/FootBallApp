import 'package:flutter/material.dart';
import 'package:football/Weidgets/outlinedContainer.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../../constant/constants.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  int _selected = 0;

  int _selected2 = 0;

  selected(int number) {
    if (_selected != number) {
      setState(() {
        _selected = number;
      });
    }
  }

  selected2(int number) {
    if (_selected2 != number) {
      setState(() {
        _selected2 = number;
      });
    }
  }

  Map<String, double> dataMap = {
    "Flutter": 85,
  };

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
              'Statistics',
              style: TextStyle(
                  color: kTextWhiteColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => selected(0),
                  child: OutLinedBoxWidget(
                    title: 'Day',
                    selected: _selected == 0 ? true : false,
                  ),
                ),
                InkWell(
                  onTap: () => selected(1),
                  child: OutLinedBoxWidget(
                    title: 'Week',
                    selected: _selected == 1 ? true : false,
                  ),
                ),
                InkWell(
                    onTap: () => selected(2),
                    child: OutLinedBoxWidget(
                      title: 'Month',
                      selected: _selected == 2 ? true : false,
                    ))
              ],
            ),

            // SizedBox(
            //   height: 25.h,
            //   child: PageView.builder(
            //       itemCount: 5,
            //       itemBuilder: (context, index) {
            //         return const MatchesPageViewWeidget();
            //       }),
            // ),

            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 40.h,
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: PageController(viewportFraction: 0.7),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: PieChart(
                            totalValue: 100,
                            dataMap: dataMap,
                            animationDuration:
                                const Duration(milliseconds: 800),
                            chartRadius: 50.w,
                            baseChartColor: kSecondaryColor,
                            gradientList: const [
                              [
                                Color.fromARGB(255, 55, 13, 146),
                                Color.fromARGB(255, 123, 62, 246),
                              ]
                            ],
                            chartType: ChartType.ring,
                            ringStrokeWidth: 3.w,
                            legendOptions: const LegendOptions(
                              showLegends: false,
                            ),
                            chartValuesOptions: const ChartValuesOptions(
                              showChartValues: false,
                              showChartValuesInPercentage: true,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 15.h,
                            left: 20.w,
                            child: Column(
                              children: [
                                Text(
                                  '47%',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.sp),
                                ),
                                const Text(
                                  'Wins/day',
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ],
                            )),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () => selected2(0),
                    child: OutLinedBoxWidget(
                      title: 'Lineal',
                      selected: _selected2 == 0 ? true : false,
                    )),
                SizedBox(
                  width: 5.w,
                ),
                InkWell(
                  onTap: () => selected2(1),
                  child: OutLinedBoxWidget(
                    title: 'Radial',
                    selected: _selected2 == 1 ? true : false,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_drop_up_outlined,
                          color: Colors.green[500],
                          size: 15.w,
                        ),
                        Text(
                          '4,8&',
                          style:
                              TextStyle(color: Colors.black, fontSize: 25.sp),
                        ),
                      ],
                    ),
                    const Text(
                      'Avrage /hour',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                  child: const VerticalDivider(
                    color: Colors.black,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_drop_up_outlined,
                          color: Colors.green[500],
                          size: 15.w,
                        ),
                        Text(
                          '4,8&',
                          style:
                              TextStyle(color: Colors.black, fontSize: 25.sp),
                        ),
                      ],
                    ),
                    const Text(
                      'Total /day',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
