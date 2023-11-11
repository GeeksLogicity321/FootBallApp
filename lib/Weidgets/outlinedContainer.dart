import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constant/constants.dart';

class OutLinedBoxWidget extends StatelessWidget {
  OutLinedBoxWidget({super.key, required this.title, this.icon, this.selected});
  String title;
  IconData? icon;
  bool? selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.w,
      height: 4.h,
      decoration: BoxDecoration(
          gradient: selected == true
              ? const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                      Color.fromARGB(255, 56, 129, 255),
                      Color.fromARGB(255, 0, 27, 149),
                    ])
              : null,
          border: selected == true
              ? null
              : Border.all(width: 0.5, color: Colors.black),
          borderRadius: BorderRadius.circular(4.w)),
      child: icon == null
          ? Center(child: Text(title))
          : Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Icon(
                icon,
                color: kIconcolor,
              ),
              Text(title)
            ]),
    );
  }
}
