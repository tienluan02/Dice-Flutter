import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dice',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: MyHomePage(),
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              changeDiceNumber();
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                changeDiceNumber();
              });
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ),
        ),
      ]),
    );
  }
}
