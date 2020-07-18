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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          recipes[index].title,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Alegreya',
                            fontSize: 20.0,
                            color: Color(0xff3E3407),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${recipes[index].cookTime}',
                          style: TextStyle(
                            fontFamily: 'Alegreya',
                            fontSize: 18.0,
                            color: Color(0xff567119),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xffA3A53F).withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Ingredients:',
                            style: TextStyle(
                              fontFamily: 'Alegreya',
                              fontSize: 18.0,
                              color: Color(0xff212121),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffA3A53F).withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        padding: EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Bulletin(
                            tasks: recipes[index].ingredients,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xff657119).withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Process:',
                            style: TextStyle(
                              fontFamily: 'Alegreya',
                              fontSize: 18.0,
                              color: Color(0xff212121),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xff657119).withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Bulletin(
                            tasks: recipes[index].process,
                          ),
                        ),
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
