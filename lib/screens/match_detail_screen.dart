import 'package:crickbuzz/models/cricket_model.dart';
import 'package:crickbuzz/screens/match_Info_screen.dart';
import 'package:crickbuzz/screens/score_screen.dart';
import 'package:crickbuzz/screens/team_screen.dart';
import 'package:flutter/material.dart';


class MatchCard extends StatelessWidget {
  final Data match;

  MatchCard({required this.match});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return MatchInfoScreen(match: match,);
      }));
    } ,
      child: Card(color: Colors.grey[100],
        elevation: 10,
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(match.name ?? "Unknown Match", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Match Type: ${match.matchType ?? ''}"),
              Text("Status: ${match.status ?? ''}"),
              Text("Venue: ${match.venue ?? ''}"),
              Text("Date: ${match.date ?? ''}"),
              const SizedBox(height: 10),
              const Text("Teams:", style: TextStyle(fontWeight: FontWeight.bold)),
              Column(
                children: match.teamInfo?.map((team) {
                  return TeamWidget(team: team);
                }).toList() ??
                    [const Text("No team data available")],
              ),
              const SizedBox(height: 10),
              const Text("Scores:", style: TextStyle(fontWeight: FontWeight.bold)),
              Column(
                children: match.score?.map((score) {
                  return ScoreWidget(score: score);
                }).toList() ??
                    [const Text("No score data available")],
              ),
            ],
          ),
        ),
      ),
    );
  }
}