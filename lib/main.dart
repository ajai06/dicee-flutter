import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        title: const Text("Dicee"),
        backgroundColor: Colors.green,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  
  int leftDiceButton = 1;
  int rightDiceButton = 2;

  void random () {
    setState(() {
      leftDiceButton = Random().nextInt(6) + 1;
      rightDiceButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: () {
                    random();
                  },
                child: Image.asset('images/dice$leftDiceButton.png'),
              )
          ),
          Expanded(
            child: TextButton(
                onPressed: (){
                    random();
                  },
                child: Image.asset('images/dice$rightDiceButton.png')),
          )
        ],
      ),
    );
  }
}


