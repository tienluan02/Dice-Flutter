import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
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
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
          children: [
            Expanded(
                child: Image(
                    image: AssetImage('images/dice1.png')
                ),
            ),
            Expanded(
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
          ]
      ),
    );
  }
}
