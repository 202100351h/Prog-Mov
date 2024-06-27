import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = 1;
  int rightDice = 1;

  // Función para generar un número aleatorio entre 1 y 6.
  int _rollDice() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(
          "DiceApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 30.0,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDice =
                      _rollDice(); // Asigna un número aleatorio al dado izquierdo.
                  rightDice =
                      _rollDice(); // Asigna un número aleatorio al dado derecho.
                });
                print("Left dice: $leftDice, Right dice: $rightDice");
              },
              child: Image.asset('assets/img/dice$leftDice.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDice =
                      _rollDice(); // Asigna un número aleatorio al dado izquierdo.
                  rightDice =
                      _rollDice(); // Asigna un número aleatorio al dado derecho.
                });
                print("Left dice: $leftDice, Right dice: $rightDice");
              },
              child: Image.asset('assets/img/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
