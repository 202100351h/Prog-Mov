import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'assets/images/avatar.png'), // Reemplaza con la ruta de tu imagen
            Text(
              'Calculadora de Préstamos',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Obtenga un préstamo bancario con solo unos pocos clics',
              style: TextStyle(fontSize: 16),
            ),
            ElevatedButton.icon(
              onPressed: () {
                // Lógica al presionar el botón
                print('Empezar');
              },
              icon: Icon(Icons.play_arrow),
              label: Text('Empezar'),
            ),
          ],
        ),
      ),
    );
  }
}
