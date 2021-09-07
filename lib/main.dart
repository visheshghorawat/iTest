import 'package:flutter/material.dart';
import 'date_picker_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: RCard(
                  colour: Colors.white,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      DatePickerPage(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: RCard(
                  colour: Colors.white,
                  cardChild: Column(),
                ),
              ),
              Expanded(
                child: RCard(
                  colour: Colors.white,
                  cardChild: Column(),
                ),
              ),
              BottomButton(
                buttonTitle: 'CONFIRM',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RCard extends StatelessWidget {
  RCard({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            //  style: ,
          ),
        ),
        //  color: ,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        //  width: ,
        //  height: ,
      ),
    );
  }
}
