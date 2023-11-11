import 'package:flutter/material.dart';
import '../Models/NewsDetailModel.dart';
import '../utilities/ApiFunctions.dart';

class NewsDetailProvider extends ChangeNotifier {
  NewsDetailModel? _newsDetail;
  bool isLoading = false;
  NewsDetailModel? get newsDetail => _newsDetail;

  String? _slug;

  get slug => _slug;

  callNewsApi(BuildContext context) async {
    try {
      isLoading = true;
      await Future.delayed(const Duration(seconds: 2));
      notifyListeners();
      _newsDetail = await ApiServices().fetchNewsDetails(context);
      isLoading = false;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  void setSelected(String id, BuildContext context) {
    _slug = id;
    callNewsApi(context);
  }
}
