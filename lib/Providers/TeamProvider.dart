import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:football/Models/PlayersModel.dart';
import 'package:http/http.dart' as http;
import '../constant/api_constants.dart';
import '../utilities/Filtering.dart';
import '../utilities/SnackbarHandeling.dart';
import '../utilities/enums.dart';

class TeamProvider extends ChangeNotifier {
  bool isLoading = false;
  List<PlayersModel> _team1 = [];

  List<PlayersModel> get team1 => _team1;
  List<PlayersModel> _team2 = [];
  List<PlayersModel> get team2 => _team2;
  List<CoachModel> _coach1 = [];
  List<CoachModel> get coach1 => _coach1;
  List<CoachModel> _coach2 = [];
  List<CoachModel> get coach2 => _coach2;

  String? _selected;

  get selected => _selected;

  callTeamApi(BuildContext context) async {
    try {
      isLoading = true;
      notifyListeners();
      await Future.delayed(const Duration(seconds: 5));

      final Uri url = Uri.parse(ApiConstants.teams + _selected!);

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        _team1 = filterTeam(jsonResponse, TeamEnum.team1);
        _team2 = filterTeam(jsonResponse, TeamEnum.team2);
        _coach1 = filterCoach(jsonResponse, TeamEnum.team1);
        _coach2 = filterCoach(jsonResponse, TeamEnum.team2);
        isLoading = false;
        notifyListeners();
      } else {
        throw Exception(
            'Error cannot connect to MatchesLineup Apis ${response.statusCode}');
      }
    } catch (e) {
      errorSnackbar(context, e.toString());
      rethrow;
    }
  }

  void setSelected(String id, BuildContext context) {
    _selected = id;
    callTeamApi(context);
    print(_selected);
  }
}
