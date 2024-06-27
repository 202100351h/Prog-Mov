import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  bool answer = false; // Inicialmente, la respuesta es falsa.

  void checkAnswer(bool userAnswer) {
    // Comprueba si la respuesta del usuario es correcta.
    if (userAnswer == answer) {
      // Aquí puedes agregar lógica adicional (por ejemplo, mostrar una alerta).
      print("¡Respuesta correcta!");
    } else {
      print("Respuesta incorrecta");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "¿Es esta afirmación verdadera o falsa?",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              "El sol es una estrella.",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    checkAnswer(true); // El usuario seleccionó "Verdadero".
                  },
                  child: Text("Verdadero"),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    checkAnswer(false); // El usuario seleccionó "Falso".
                  },
                  child: Text("Falso"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
