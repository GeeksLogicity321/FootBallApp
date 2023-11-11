import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:football/Models/NewsDetailModel.dart';
import 'package:football/Models/NewsModel.dart';
import 'package:football/Providers/NewsDetailProvider.dart';
import 'package:football/utilities/Filtering.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../Models/Matches.dart';
import '../constant/api_constants.dart';
import 'SnackbarHandeling.dart';

class ApiServices {
  Future<List<MatchesModel>> fetchMatches(BuildContext context) async {
    try {
      final Uri url = Uri.parse(ApiConstants.liveMatches);

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        final List<MatchesModel> matches = filterMatches(jsonResponse);

        return matches;
      } else {
        throw Exception(
            'Error cannot connect to Matches Apis ${response.statusCode}');
      }
    } catch (e) {
      errorSnackbar(context, e.toString());
      rethrow;
    }
  }

  Future<List<NewsModel>> fetchNewsList(BuildContext context) async {
    try {
      final Uri url = Uri.parse(ApiConstants.news);

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        final List<NewsModel> news = filterNews(jsonResponse);

        return news;
      } else {
        throw Exception('cannot connect to News Api ${response.statusCode}');
      }
    } catch (e) {
      errorSnackbar(context, e.toString());
      rethrow;
    }
  }

  Future<NewsDetailModel> fetchNewsDetails(BuildContext context) async {
    try {
      final Uri url = Uri.parse(
          ApiConstants.newsDetail + context.read<NewsDetailProvider>().slug!);

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        return NewsDetailModel.fromJson(jsonResponse);
      } else {
        throw Exception(
            'Error cannot connect to Matches Apis ${response.statusCode}');
      }
    } catch (e) {
      errorSnackbar(context, e.toString());
      rethrow;
    }
  }

  // Future<List<MatchesModel>> fetchTeams(BuildContext context) async {
  //   try {
  //     final Uri url = Uri.parse(ApiConstants.teams);

  //     final response = await http.get(
  //       url,
  //     );

  //     if (response.statusCode == 200) {
  //       final Map<String, dynamic> jsonResponse = json.decode(response.body);

  //       final List<MatchesModel> team = filterTeam(jsonResponse, TeamEnum.team1);

  //       return team;
  //     } else {
  //       throw Exception(
  //           'Error cannot connect to MatchesLineup Apis ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     errorSnackbar(context, e.toString());
  //     rethrow;
  //   }
  // }
}
