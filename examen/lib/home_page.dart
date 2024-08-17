import 'package:flutter/material.dart';
import 'dart:math';

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
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Obtenga un préstamo bancario con solo unos pocos clics',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                navigateToLoanCalculator();
              },
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 9, 42, 69),
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
  double interestRate = 10.0;
  int loanTerm = 12;

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
        backgroundColor: const Color.fromARGB(255, 9, 42, 69),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Monto del préstamo:',
                style: TextStyle(
                    fontSize: 18, color: const Color.fromARGB(255, 9, 42, 69)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'S/. ${loanAmount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              Slider(
                value: loanAmount,
                min: 1000,
                max: 50000,
                divisions: 490,
                activeColor: Colors.orange,
                inactiveColor: Colors.orange.withOpacity(0.3),
                onChanged: (value) {
                  setState(() {
                    loanAmount = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('S/. 1000',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 9, 42, 69))),
                  Text('S/. 50000',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 9, 42, 69))),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Plazo del préstamo (meses)',
                style: TextStyle(
                    fontSize: 18, color: const Color.fromARGB(255, 9, 42, 69)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$loanTerm meses',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              Slider(
                value: loanTerm.toDouble(),
                min: 6,
                max: 36,
                activeColor: Colors.orange,
                inactiveColor: Colors.orange.withOpacity(0.3),
                onChanged: (value) {
                  setState(() {
                    loanTerm = value.toInt();
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('6 meses',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 9, 42, 69))),
                  Text('36 meses',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 9, 42, 69))),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Tasa de interés anual',
                style: TextStyle(
                    fontSize: 18, color: const Color.fromARGB(255, 9, 42, 69)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${interestRate.toStringAsFixed(1)}%',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              Slider(
                value: interestRate,
                min: 10,
                max: 50,
                activeColor: Colors.orange,
                inactiveColor: Colors.orange.withOpacity(0.3),
                onChanged: (value) {
                  setState(() {
                    interestRate = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('10%',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 9, 42, 69))),
                  Text('50%',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 9, 42, 69))),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoanDetailsPage(
                        loanAmount: loanAmount,
                        interestRate: interestRate,
                        loanTerm: loanTerm,
                      ),
                    ),
                  );
                },
                child: Text('Saca tu préstamo'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 9, 42, 69),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoanDetailsPage extends StatelessWidget {
  final double loanAmount;
  final double interestRate;
  final int loanTerm;

  LoanDetailsPage({
    required this.loanAmount,
    required this.interestRate,
    required this.loanTerm,
  });

  //calcular la cuota mensual
  double calculateMonthlyInstallment() {
    double monthlyInterestRate = interestRate / 12 / 100;
    return loanAmount *
        monthlyInterestRate *
        pow(1 + monthlyInterestRate, loanTerm) /
        (pow(1 + monthlyInterestRate, loanTerm) - 1);
  }

  @override
  Widget build(BuildContext context) {
    double monthlyInstallment = calculateMonthlyInstallment();
    double totalPayment = monthlyInstallment * loanTerm;
    double totalInterest = totalPayment - loanAmount;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Préstamo'),
        backgroundColor: const Color.fromARGB(255, 9, 42, 69),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRow(
                'Monto del préstamo:',
                'S/. ${loanAmount.toStringAsFixed(2)}',
                const Color.fromARGB(255, 9, 42, 69),
                Colors.orange),
            Divider(color: Colors.grey.shade400),
            _buildDetailRow(
                'Tasa de interés anual:',
                '${interestRate.toStringAsFixed(1)}%',
                const Color.fromARGB(255, 9, 42, 69),
                Colors.orange),
            Divider(color: Colors.grey.shade400),
            _buildDetailRow('Plazo del préstamo:', '$loanTerm meses',
                const Color.fromARGB(255, 9, 42, 69), Colors.orange),
            Divider(color: Colors.grey.shade400),
            _buildDetailRow(
                'Cuota mensual:',
                'S/. ${monthlyInstallment.toStringAsFixed(2)}',
                const Color.fromARGB(255, 9, 42, 69),
                Colors.orange),
            Divider(color: Colors.grey.shade400),
            _buildDetailRow(
                'Total de intereses a pagar:',
                'S/. ${totalInterest.toStringAsFixed(2)}',
                const Color.fromARGB(255, 9, 42, 69),
                Colors.orange),
            Divider(color: Colors.grey.shade400),
            _buildDetailRow(
                'Total a pagar:',
                'S/. ${totalPayment.toStringAsFixed(2)}',
                const Color.fromARGB(255, 9, 42, 69),
                Colors.orange),
            SizedBox(height: 30.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoanApprovalPage(),
                    ),
                  );
                },
                child: Text('Saca tu préstamo'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 9, 42, 69),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(
      String label, String value, Color labelColor, Color valueColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 18,
              color: labelColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 18,
              color: valueColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}

class LoanApprovalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aprobación de Préstamo'),
        backgroundColor: const Color.fromARGB(255, 9, 42, 69),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.orange,
              size: 100.0,
            ),
            SizedBox(height: 20.0),
            Text(
              '¡FELICIDADES!',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 9, 42, 69),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Su crédito fue aprobado',
              style: TextStyle(
                fontSize: 24,
                color: const Color.fromARGB(255, 9, 42, 69),
              ),
            ),
            SizedBox(height: 40.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Volver'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 9, 42, 69),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
