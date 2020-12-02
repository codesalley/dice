import 'package:flutter/material.dart';
import 'dart:math';

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
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numOne;
  int numTwo;

  void generate() {
    numOne = Random().nextInt(5);
    numTwo = Random().nextInt(5);
    // print(numOne);
    // print(numTwo);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              generate();
            });
          },
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Expanded(
                //flex: 2,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Image(
                    image: AssetImage('images/dice${numOne + 1}.png'),
                  ),
                ),
              ),
              Expanded(
                // flex: 2,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Image(
                    image: AssetImage('images/dice${numTwo + 1}.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
