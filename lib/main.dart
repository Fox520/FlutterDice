import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: Text('Dice'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDiceNumber = 1;
  int leftDiceNumber = 1;

  void randomizeDice() {
    setState(() {
      // 0 [inclusive] max [exclusive]
      leftDiceNumber = math.Random().nextInt(6) + 1;
      rightDiceNumber = math.Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  randomizeDice();
                },
                padding: EdgeInsets.all(0),
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  randomizeDice();
                },
                padding: EdgeInsets.all(0),
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
