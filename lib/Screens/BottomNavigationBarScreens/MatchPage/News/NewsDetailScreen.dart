import 'package:flutter/material.dart';
import 'package:football/Providers/NewsDetailProvider.dart';
import 'package:provider/provider.dart';

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
            : Row(
                children: [
                  Image.network(newsDetailProvider.newsDetail!.image!.url!)
                ],
              );
      }),
    );
  }
}
