import 'package:flutter/material.dart';
import 'info_screen.dart';
import '../models/data.dart';
import '../utils/bulletin.dart';

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
        tooltip: "Facts",
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => InformationPage()));
        },
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Card(
                elevation: 2,
                margin: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Text(recipes[index].title),
                      Text('Cooking Time: ${recipes[index].cookTime}'),
                      Text('Ingredients:'),
                      Bulletin(
                        tasks: recipes[index].ingredients,
                      ),
                      Text('Process:'),
                      Bulletin(
                        tasks: recipes[index].process,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: recipes.length,
        ),
      ),
    );
  }
}
