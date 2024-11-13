import 'package:crickbuzz/models/cricket_model.dart';
import 'package:flutter/material.dart';

class TeamWidget extends StatelessWidget {
  final TeamInfo team;

  TeamWidget({required this.team});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(team.img ?? "", width: 40, height: 40, errorBuilder: (context, error, stackTrace) {
        return Icon(Icons.image);
      }),
      title: Text(team.name ?? "Unknown Team"),
      subtitle: Text(team.shortname ?? "N/A"),
    );
  }
}