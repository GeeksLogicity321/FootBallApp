import 'package:flutter/material.dart';
import 'package:football/Models/Matches.dart';
import 'package:football/utilities/ApiFunctions.dart';
import 'package:flutter/foundation.dart';

class LiveMatchesProvider extends ChangeNotifier {
  List<MatchesModel> _matchesList = [];
  bool isLoading = false;
  List<MatchesModel> get matchesList => _matchesList;

  int? _selected;

  get selected => _selected;

  callMatchesApi(BuildContext context) async {
    try {
      isLoading = true;
      notifyListeners();
      _matchesList = await ApiServices().fetchMatches(context);
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
