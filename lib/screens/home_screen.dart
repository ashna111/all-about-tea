import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.local_cafe,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff3E3407),
        onPressed: null,
      ),
    );
  }
}
