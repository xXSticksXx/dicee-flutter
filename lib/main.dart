import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF212121),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red[400],
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
  int leftDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
           Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                   leftDiceNumber = 6; 
                   print('diceNumber = $leftDiceNumber');
                  });
                },
                child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
          
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  print('Right Button is pressed');
                },
                child: Image(
                image: AssetImage('images/dice1.png'),
                ),
              ),
          ),
        ]
      ),
    );
  }
}