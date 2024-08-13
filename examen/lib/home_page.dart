import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double loanAmount = 10000;

  void navigateToLoanCalculator() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => LoanCalculatorPage(loanAmount: loanAmount)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/avatar.png'),
            Text(
              'Calculadora de Préstamos',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Obtenga un préstamo bancario con solo unos pocos clics',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20.0),
            Text(
              'Monto del préstamo: S/. ${loanAmount.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                navigateToLoanCalculator();
              },
              child: Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Empezar',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoanCalculatorPage extends StatefulWidget {
  final double loanAmount;

  LoanCalculatorPage({required this.loanAmount});

  @override
  _LoanCalculatorPageState createState() => _LoanCalculatorPageState();
}

class _LoanCalculatorPageState extends State<LoanCalculatorPage> {
  late double loanAmount;
  double interestRate = 5.0;

  @override
  void initState() {
    super.initState();
    loanAmount = widget.loanAmount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Préstamos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Monto del préstamo:',
                style: TextStyle(fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'S/. ${loanAmount.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
              Slider(
                value: loanAmount,
                min: 1000,
                max: 50000,
                onChanged: (value) {
                  setState(() {
                    loanAmount = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'Tasa de interés:',
                style: TextStyle(fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${interestRate.toStringAsFixed(1)}%',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Slider(
                value: interestRate,
                min: 0,
                max: 10,
                onChanged: (value) {
                  setState(() {
                    interestRate = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {},
                child: Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
