import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'home_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        description:
            "\"A cup of tea would restore my normality\"\n ~ Douglas Adams",
        styleDescription: TextStyle(
            color: Color(0xff254A0C), fontSize: 23.0, fontFamily: 'Alegreya'),
        pathImage: "images/intro_1.png",
        backgroundColor: Color(0xffffffff),
      ),
    );
    slides.add(
      new Slide(
        description:
            "Life is like a cup of tea. \nThe taste is all upto how you make it",
        styleDescription: TextStyle(
            color: Color(0xff567119), fontSize: 23.0, fontFamily: 'Alegreya'),
        pathImage: "images/intro_2.png",
        backgroundColor: Color(0xffffffff),
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xff3E3407),
      size: 35.0,
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xff3E3407),
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xff3E3407),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,

      renderSkipBtn: this.renderSkipBtn(),
      renderNextBtn: this.renderNextBtn(),

      //Done Button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
    );
  }
}
