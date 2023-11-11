import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:football/Models/EventModel.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../constant/api_constants.dart';
import '../utilities/Filtering.dart';
import '../utilities/SnackbarHandeling.dart';
import 'TeamProvider.dart';

class EventProvider extends ChangeNotifier {
  bool isLoading = false;
  List<EventModel> _event = [];

  List<EventModel> get event => _event;

  String? _selected;

  get selected => _selected;

  callEventApi(BuildContext context) async {
    try {
      isLoading = true;
      notifyListeners();
      await Future.delayed(const Duration(seconds: 5));

      final Uri url = Uri.parse(
          ApiConstants.event + context.read<TeamProvider>().selected!);

      final response = await http.get(
        url,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        _event = filterEvent(jsonResponse);

        isLoading = false;
        notifyListeners();
      } else {
        throw Exception(
            'Error cannot connect to Event Apis ${response.statusCode}');
      }
    } catch (e) {
      errorSnackbar(context, e.toString());
      rethrow;
    }
  }

  void setSelected(String id, BuildContext context) {
    _selected = id;
    callEventApi(context);
    print(_selected);
  }
}
