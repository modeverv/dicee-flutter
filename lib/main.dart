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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var diceLeft = 1;
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  print("left button pressed");
                  diceLeft = 2;
                },
                child: Image.asset('images/dice$diceLeft.png')),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  print("right button pressed");
                },
                child: Image.asset('images/dice2.png')),
          ),
        ],
      ),
    );
  }
}
