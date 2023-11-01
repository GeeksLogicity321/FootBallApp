import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/Matches.dart';
import '../constant/api_constants.dart';

class ApiServices {
  Future<List<MatchesModel>> fetchMatches() async {
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
        throw Exception('Error cannot connect to AllHomeInternational');
      }
    } catch (e) {
      rethrow;
    }
  }
}

List<MatchesModel> filterMatches(Map<String, dynamic> jsonResponse) {
  List<MatchesModel> matches = [];

  for (final Map<String, dynamic> i in jsonResponse['data']) {
    for (final Map<String, dynamic> i2 in i['matches']) {
      matches.add(MatchesModel.fromJson(i2));
    }
  }
  return matches;
}
