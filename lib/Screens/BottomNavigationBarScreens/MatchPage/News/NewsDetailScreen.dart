import 'package:flutter/material.dart';
import 'package:football/Providers/NewsDetailProvider.dart';
import 'package:football/constant/constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});
  static const routeName = 'NewsDetailScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NewsDetailProvider>(builder: (__, newsDetailProvider, _) {
        return newsDetailProvider.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(newsDetailProvider.newsDetail!.image!.url!),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Text(
                          newsDetailProvider.newsDetail!.title!,
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Text(
                          "Author: ${newsDetailProvider.newsDetail!.author ?? ''}",
                          style:
                              TextStyle(fontSize: 15.sp, color: kPrimaryColor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount:
                                newsDetailProvider.newsDetail!.article!.length,
                            itemBuilder: (context, index) {
                              return Text(newsDetailProvider
                                  .newsDetail!.article![index].p!);
                            }),
                      )
                    ],
                  ),
                ],
              );
      }),
    );
  }
}
