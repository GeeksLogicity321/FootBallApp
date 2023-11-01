import 'package:flutter/material.dart';
import 'package:football/Models/Matches.dart';
import 'package:football/utilities/ApiFunctions.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LiveMatchesProvider extends ChangeNotifier {
  List<MatchesModel> _matchesList = [];
  bool isLoading = false;
  List<MatchesModel> get matchesList => _matchesList;

  int? _selected;

  get selected => _selected;

  callMatchesApi() async {
    isLoading = true;
    notifyListeners();
    _matchesList = await ApiServices().fetchMatches();
    isLoading = false;
    notifyListeners();
  }

  void setSelected(int id) {
    _selected = id;
  }
}
