import 'package:crickbuzz/provider/cricket_provider.dart';
import 'package:crickbuzz/screens/match_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CricketScreen extends StatelessWidget {
  final String apikey = "https://api.cricapi.com/v1/currentMatches?apikey=5530196f-c856-4256-9d8d-956aea57f415&offset=0"; // Replace with your actual API key

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CricketProvider()..fetchCricketData(apikey),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.green[700],
          title: Text(" FEATURED"),
        ),
        body: Consumer<CricketProvider>(
          builder: (context, provider, child) {
            if (provider.isLoading) {
              return Center(child: CircularProgressIndicator());
            }

            if (provider.cricketData == null || provider.cricketData?.data == null  || provider.cricketData!.data!.isEmpty) {
              return Center(child: Text("No data available"));
            }

            return ListView(
              children: provider.cricketData!.data!.map((match) {
                return MatchCard(match: match);
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}