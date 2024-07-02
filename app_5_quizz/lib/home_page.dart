import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionNumber = 0;

  List<String> questions = [
    "¿El hombre llegó a la luna?",
    "¿El día miércoles tienen clases de prog. Móvil?",
    "¿Ícaro llegó al Sol?",
    "¿Goku es el guerrero más poderoso del universo?",
    "¿xd?",
  ];

  List<bool> answers = [
    true,
    true,
    false,
    true,
  ];

  List<Icon> scorekeeper = [];

  void checkAnswer(bool userAnswer) {
    if (userAnswer == answers[questionNumber]) {
      scorekeeper.add(Icon(Icons.check, color: Colors.green));
    } else {
      scorekeeper.add(Icon(Icons.close, color: Colors.red));
    }
    if (questionNumber < questions.length - 1) {
      setState(() {
        questionNumber++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2d42),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "QuizApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  questions[questionNumber],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  checkAnswer(true);
                },
                child: Text("Verdadero"),
                color: Colors.greenAccent,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  checkAnswer(false);
                },
                child: Text("Falso"),
                color: Colors.redAccent,
              ),
            ),
          ),
          Row(
            children: scorekeeper,
          ),
        ],
      ),
    );
  }
}
