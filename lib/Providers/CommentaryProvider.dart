import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:football/Models/CommentaryModel.dart';
import 'package:football/Providers/TeamProvider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../constant/api_constants.dart';
import '../utilities/Filtering.dart';
import '../utilities/SnackbarHandeling.dart';

class CommentaryProvider extends ChangeNotifier {
  bool isLoading = false;
  List<CommentaryModel> _commentary = [];

  List<CommentaryModel> get commentary => _commentary;

  String? _selected;

  get selected => _selected;

  callCommentaryApi(BuildContext context) async {
    try {
      isLoading = true;
      notifyListeners();
      await Future.delayed(const Duration(seconds: 5));

      final Uri url = Uri.parse(
          ApiConstants.commentary + context.read<TeamProvider>().selected!);

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        _commentary = filterCommentary(jsonResponse);

        isLoading = false;
        notifyListeners();
      } else {
        throw Exception(
            'Error cannot connect to Commentary Apis ${response.statusCode}');
      }
    } catch (e) {
      errorSnackbar(context, e.toString());
      rethrow;
    }
  }

  void setSelected(String id, BuildContext context) {
    _selected = id;
    callCommentaryApi(context);
    print(_selected);
  }
}
