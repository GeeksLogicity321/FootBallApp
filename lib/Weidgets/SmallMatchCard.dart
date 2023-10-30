import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constant/constants.dart';

class SmallMatchCard extends StatelessWidget {
  const SmallMatchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      height: 6.h,
      decoration: const BoxDecoration(color: kSecondaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'Assets/1.png',
            height: 5.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('VS', style: Theme.of(context).textTheme.bodySmall!),
              Text(
                '0:0',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: kothercolor, fontWeight: FontWeight.bold),
              ),
              Text('21:16', style: Theme.of(context).textTheme.bodySmall!)
            ],
          ),
          Image.asset(
            'Assets/pngegg.png',
            height: 5.h,
          ),
        ],
      ),
    );
  }
}
