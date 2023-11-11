import 'package:flutter/material.dart';
import 'package:football/Providers/NewsProvider.dart';
import 'package:provider/provider.dart';
import 'NewsTile.dart';

class TrendingNewsListView extends StatelessWidget {
  const TrendingNewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(builder: (_, newsProvider, __) {
      if (newsProvider.isLoading) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return ListView.builder(
            itemCount: newsProvider.newsList.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final currentIndexNews = newsProvider.newsList[index];
              return NewsWidget(
                slug: currentIndexNews.slug!,
                image: currentIndexNews.image,
                time: currentIndexNews.publishedEpoch,
                title: currentIndexNews.title,
              );
            });
      }
    });
  }
}
