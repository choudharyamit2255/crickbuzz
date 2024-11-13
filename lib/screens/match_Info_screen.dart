import 'package:crickbuzz/models/cricket_model.dart';
import 'package:flutter/material.dart';


class MatchInfoScreen extends StatefulWidget {
  final Data match;
  const MatchInfoScreen({super.key, required this.match});

  @override
  State<MatchInfoScreen> createState() => _MatchInfoScreenState();
}

class _MatchInfoScreenState extends State<MatchInfoScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(widget.match.name??'No name'),),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("INFO",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Match Type :'),
                  Text(widget.match.matchType ?? '')
                ],), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Date :'),
                    Text(widget.match.date ?? '')
                  ],), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Time :'),
                    Text(widget.match.dateTimeGMT ?? '')
                  ],), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Venue :'),
                    Text(widget.match. venue?? '')
                  ],), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('SeriesId :'),
                    Text(widget.match.seriesId ?? '')
                  ],), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Status :'),
                    Text(widget.match.status ?? '')
                  ],),
              ],
            ),
          ),
      ],),
    );
  }
}
