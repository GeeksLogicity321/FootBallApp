import 'package:flutter/material.dart';
import 'package:football/Providers/CommentaryProvider.dart';
import 'package:football/constant/constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class CommentaryScreen extends StatelessWidget {
  const CommentaryScreen({super.key});
  static const routeName = 'CommentaryScreen';
  @override
  Widget build(BuildContext context) {
    return Consumer<CommentaryProvider>(builder: (_, commentaryProvider, __) {
      if (commentaryProvider.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return ListView.builder(
            itemCount: commentaryProvider.commentary.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                color: kSecondaryColor,
                height: 15.h,
                // width: 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Text(
                      commentaryProvider.commentary[index].txt ?? 'Nothing',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    )),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Min : ${commentaryProvider.commentary[index].min ?? '0'}',
                        style: const TextStyle(color: kTextHintColor),
                      ),
                    )
                  ],
                ),
              );
            });
      }
    });
  }
}
