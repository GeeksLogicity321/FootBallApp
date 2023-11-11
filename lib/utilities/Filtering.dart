import 'package:football/Models/CommentaryModel.dart';
import 'package:football/Models/EventModel.dart';
import 'package:football/Models/PlayersModel.dart';
import 'package:football/utilities/enums.dart';

import '../Models/Matches.dart';
import '../Models/NewsModel.dart';

List<NewsModel> filterNews(Map<String, dynamic> jsonResponse) {
  List<NewsModel> news = [];

  for (final Map<String, dynamic> i in jsonResponse['data']) {
    news.add(NewsModel.fromJson(i));
  }
  return news;
}

List<MatchesModel> filterMatches(Map<String, dynamic> jsonResponse) {
  List<MatchesModel> matches = [];

  if (jsonResponse['data'].isEmpty) {
    return matches;
  } else {
    for (final Map<String, dynamic> i in jsonResponse['data']) {
      for (final Map<String, dynamic> i2 in i['matches']) {
        final singleMatch = MatchesModel.fromJson(i2);
        singleMatch.leagueName = i['league_name'];
        singleMatch.leagueId = i['league_id'];
        matches.add(singleMatch);
      }
    }

    return matches;
  }
}

List<PlayersModel> filterTeam(
    Map<String, dynamic> jsonResponse, TeamEnum team) {
  List<PlayersModel> players = [];
  String key = team == TeamEnum.team1 ? 'team_1' : 'team_2';

  for (final Map<String, dynamic> i in jsonResponse['data'][key]['players']) {
    players.add(PlayersModel.fromJson(i));
  }
  return players;
}

List<CoachModel> filterCoach(Map<String, dynamic> jsonResponse, TeamEnum team) {
  List<CoachModel> coach = [];
  String key = team == TeamEnum.team1 ? 'team_1' : 'team_2';

  for (Map<String, dynamic> i in jsonResponse['data'][key]['coach']) {
    coach.add(CoachModel.fromJson(i));
  }
  return coach;
}

List<CommentaryModel> filterCommentary(Map<String, dynamic> jsonResponse) {
  List<CommentaryModel> commentary = [];
  if (jsonResponse['data'].isEmpty) {
    return commentary;
  } else {
    for (final Map<String, dynamic> i in jsonResponse['data']) {
      commentary.add(CommentaryModel.fromJson(i));
    }
    return commentary;
  }
}

List<EventModel> filterEvent(Map<String, dynamic> jsonResponse) {
  List<EventModel> events = [];

  if (jsonResponse['data'].isEmpty) {
    return events;
  } else {
    for (final Map<String, dynamic> i in jsonResponse['data']) {
      events.add(EventModel.fromJson(i));
    }
    return events;
  }
}
