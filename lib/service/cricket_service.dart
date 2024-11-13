import 'dart:convert';
import 'package:crickbuzz/models/cricket_model.dart';
import 'package:http/http.dart' as http;


class CricketService {
  final String apiUrl = "https://api.cricapi.com/v1/currentMatches?apikey=5530196f-c856-4256-9d8d-956aea57f415&offset=0"; // Replace with your actual API URL

  Future<CricketModel> fetchCricketData(String apikey) async {
    final response = await http.get(Uri.parse("$apiUrl?apikey=$apikey"));
    print("ApiResponse: ${response.body}");
    if (response.statusCode == 200) {
      return CricketModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load cricket data');
    }
  }
}