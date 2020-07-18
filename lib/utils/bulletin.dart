import 'package:flutter/material.dart';

class Bulletin extends StatelessWidget {
  final List<String> tasks;

  Bulletin({this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Text(tasks[index]);
      },
      itemCount: tasks.length,
    );
  }
}
