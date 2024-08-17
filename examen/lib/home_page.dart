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
                color: Colors.black, // Cambia este color según tus preferencias
              ),
            ),
            Text(
              'Obtenga un préstamo bancario con solo unos pocos clics',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800], // Color diferente para este texto
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
  double interestRate = 10.0; // Valor inicial de la tasa de interés
  int loanTerm = 12; // Plazo inicial del préstamo en meses

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
        backgroundColor: const Color.fromARGB(255, 9, 42, 69), // Azul marino
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Monto del préstamo
              Text(
                'Monto del préstamo:',
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 9, 42, 69)), // Azul marino
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'S/. ${loanAmount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange, // Naranja
                    ),
                  ),
                ],
              ),
              Slider(
                value: loanAmount,
                min: 1000,
                max: 50000,
                divisions: 490, // Más divisiones para mayor precisión
                activeColor: Colors.orange, // Color de la barra deslizadora
                inactiveColor: Colors.orange.withOpacity(0.3), // Color inactivo
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
                          color: const Color.fromARGB(
                              255, 9, 42, 69))), // Azul marino
                  Text('S/. 50000',
                      style: TextStyle(
                          color: const Color.fromARGB(
                              255, 9, 42, 69))), // Azul marino
                ],
              ),
              SizedBox(height: 20.0),

              // Plazo del préstamo
              Text(
                'Plazo del préstamo (meses)',
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 9, 42, 69)), // Azul marino
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$loanTerm meses',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange, // Naranja
                    ),
                  ),
                ],
              ),
              Slider(
                value: loanTerm.toDouble(),
                min: 6,
                max: 36,
                activeColor: Colors.orange, // Color de la barra deslizadora
                inactiveColor: Colors.orange.withOpacity(0.3), // Color inactivo
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
                          color: const Color.fromARGB(
                              255, 9, 42, 69))), // Azul marino
                  Text('36 meses',
                      style: TextStyle(
                          color: const Color.fromARGB(
                              255, 9, 42, 69))), // Azul marino
                ],
              ),
              SizedBox(height: 20.0),

              // Tasa de interés anual
              Text(
                'Tasa de interés anual',
                style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 9, 42, 69)), // Azul marino
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${interestRate.toStringAsFixed(1)}%',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange, // Naranja
                    ),
                  ),
                ],
              ),
              Slider(
                value: interestRate,
                min: 10,
                max: 50,
                activeColor: Colors.orange, // Color de la barra deslizadora
                inactiveColor: Colors.orange.withOpacity(0.3), // Color inactivo
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
                          color: const Color.fromARGB(
                              255, 9, 42, 69))), // Azul marino
                  Text('50%',
                      style: TextStyle(
                          color: const Color.fromARGB(
                              255, 9, 42, 69))), // Azul marino
                ],
              ),
              SizedBox(height: 20.0),

              // Botón Calcular
              ElevatedButton(
                onPressed: () {
                  // Navegar a la página de detalles del préstamo
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
                  backgroundColor:
                      const Color.fromARGB(255, 9, 42, 69), // Azul marino
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

  // Método para calcular la cuota mensual (EMI)
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
        backgroundColor: const Color.fromARGB(255, 9, 42, 69), // Azul marino
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRow(
                'Monto del préstamo:',
                'S/. ${loanAmount.toStringAsFixed(2)}',
                const Color.fromARGB(
                    255, 9, 42, 69), // Azul marino para las etiquetas
                Colors.orange // Naranja para los valores
                ),
            Divider(color: Colors.grey.shade400), // Línea de separación
            _buildDetailRow(
                'Tasa de interés anual:',
                '${interestRate.toStringAsFixed(1)}%',
                const Color.fromARGB(
                    255, 9, 42, 69), // Azul marino para las etiquetas
                Colors.orange // Naranja para los valores
                ),
            Divider(color: Colors.grey.shade400), // Línea de separación
            _buildDetailRow(
                'Plazo del préstamo:',
                '$loanTerm meses',
                const Color.fromARGB(
                    255, 9, 42, 69), // Azul marino para las etiquetas
                Colors.orange // Naranja para los valores
                ),
            Divider(color: Colors.grey.shade400), // Línea de separación
            _buildDetailRow(
                'Cuota mensual:',
                'S/. ${monthlyInstallment.toStringAsFixed(2)}',
                const Color.fromARGB(
                    255, 9, 42, 69), // Azul marino para las etiquetas
                Colors.orange // Naranja para los valores
                ),
            Divider(color: Colors.grey.shade400), // Línea de separación
            _buildDetailRow(
                'Total de intereses a pagar:',
                'S/. ${totalInterest.toStringAsFixed(2)}',
                const Color.fromARGB(
                    255, 9, 42, 69), // Azul marino para las etiquetas
                Colors.orange // Naranja para los valores
                ),
            Divider(color: Colors.grey.shade400), // Línea de separación
            _buildDetailRow(
                'Total a pagar:',
                'S/. ${totalPayment.toStringAsFixed(2)}',
                const Color.fromARGB(
                    255, 9, 42, 69), // Azul marino para las etiquetas
                Colors.orange // Naranja para los valores
                ),
            SizedBox(height: 30.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Redirigir a la página de aprobación del préstamo
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoanApprovalPage(),
                    ),
                  );
                },
                child: Text('Saca tu préstamo'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 9, 42, 69), // Azul marino
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
              color: labelColor, // Color para las etiquetas
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 18,
              color: valueColor, // Color para los valores
              fontWeight: FontWeight.bold, // Alinear el texto a la derecha
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
        backgroundColor: const Color.fromARGB(255, 9, 42, 69), // Azul marino
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color:
                  Colors.orange, // Color naranja para el ícono de verificación
              size: 100.0, // Tamaño del ícono
            ),
            SizedBox(height: 20.0),
            Text(
              '¡FELICIDADES!',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 9, 42, 69), // Azul marino
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Su crédito fue aprobado',
              style: TextStyle(
                fontSize: 24,
                color: const Color.fromARGB(255, 9, 42, 69), // Azul marino
              ),
            ),
            SizedBox(height: 40.0),
            SizedBox(
              width: double
                  .infinity, // Hace que el botón ocupe todo el ancho disponible
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Volver a la página anterior
                },
                child: Text('Volver'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 9, 42, 69), // Azul marino
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
