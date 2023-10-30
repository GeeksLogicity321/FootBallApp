import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HeadLineWidget extends StatelessWidget {
  HeadLineWidget({super.key, this.title, this.icon});

  String? title;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: icon == null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title ?? ''),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Show More',
                    style: TextStyle(
                      color: Color.fromARGB(255, 96, 91, 122),
                    ),
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  color: Colors.grey,
                ),
                Text(title ?? ''),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Show More',
                    style: TextStyle(
                      color: Color.fromARGB(255, 96, 91, 122),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
