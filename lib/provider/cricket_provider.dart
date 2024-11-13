import 'package:crickbuzz/models/cricket_model.dart';
import 'package:crickbuzz/service/cricket_service.dart';
import 'package:flutter/material.dart';


class CricketProvider with ChangeNotifier {
  final CricketService _cricketService = CricketService();
  CricketModel? cricketData;
  bool isLoading = true;

  Future<void> fetchCricketData(String apikey) async {
    try {
      isLoading = true;
      notifyListeners();
      cricketData = await _cricketService.fetchCricketData(apikey);
      print("Fetched Cricket Data: ${cricketData?.toJson()}");
    } catch (e) {
      print("Error fetching cricket data: $e");
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}