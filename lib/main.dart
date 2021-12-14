import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceLeft = 1;
  int diceRight = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  print("left button pressed");
                  setState(() {
                    diceLeft = Random().nextInt(6) + 1;
                    diceRight = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$diceLeft.png')),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  print("right button pressed");
                  setState(() {
                    diceLeft = Random().nextInt(6) + 1;
                    diceRight = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$diceRight.png')),
          ),
        ],
      ),
    );
  }
}
