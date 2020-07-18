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
        return Align(
          alignment: Alignment.centerLeft,
          child: Text(
            tasks[index],
            style: TextStyle(
              fontFamily: 'Alegreya',
              fontSize: 16.0,
              color: Color(0xff212121),
            ),
          ),
        );
      },
      itemCount: tasks.length,
    );
  }
}
