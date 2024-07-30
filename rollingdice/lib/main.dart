import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              'Dice',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 2;
  int rightDiceNumber = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    print('left button is pressed');
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')
              ),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    print('right button is pressed');
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ),
          ]
      ),
    );
  }
}