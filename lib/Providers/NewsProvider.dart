import 'package:flutter/material.dart';
import 'package:football/Models/NewsModel.dart';

import '../utilities/ApiFunctions.dart';

class NewsProvider extends ChangeNotifier {
  List<NewsModel> _newsList = [];
  bool isLoading = false;
  List<NewsModel> get newsList => _newsList;

  int? _selected;

  get selected => _selected;

  callNewsApi(BuildContext context) async {
    try {
      isLoading = true;
      await Future.delayed(const Duration(seconds: 2));
      notifyListeners();
      _newsList = await ApiServices().fetchNewsList(context);
      isLoading = false;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  void setSelected(int id) {
    _selected = id;
  }
}
