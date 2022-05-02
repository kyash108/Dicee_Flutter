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
  State<DicePage> createState() => _DicePageState();
}
Random random = Random();
var min = 1;
var max = 7;
var _randomNumber1 = 1;
var _randomNumber2 = 1;

void generate(){
  _randomNumber1 = min + random.nextInt(max - min);
  _randomNumber2 = min + random.nextInt(max - min);
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(child: Image(image: AssetImage('images/dice$_randomNumber1.png')),
                onPressed: (){
                setState(() {
                  generate();
                });
                },
              ) ,
          ),
          Expanded(
              child: FlatButton(
                child: Image(image: AssetImage('images/dice$_randomNumber2.png')),
                onPressed: (){
                  setState(() {
                    generate();
                  });
                },
              ),
          ),
        ],
      ),
    );
  }
}