import 'package:crickbuzz/models/cricket_model.dart';
import 'package:flutter/material.dart';

class ScoreWidget extends StatelessWidget {
  final Score score;

  ScoreWidget({required this.score});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Inning: ${score.inning ?? ""}"),
      subtitle: Text("Runs: ${score.r ?? 0} / Wickets: ${score.w ?? 0} / Overs: ${score.o ?? 0.0}"),
    );
  }
}