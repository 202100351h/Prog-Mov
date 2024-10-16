import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIREBASE"),
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          // Verifica el estado de la conexión
          if (snapshot.connectionState == ConnectionState.done) {
            // Firebase ha sido inicializado con éxito
            return Center(
              child: Text(
                "Conectado a Firestore exitosamente!",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            );
          } else if (snapshot.hasError) {
            // Hubo un error al conectar
            return Center(
              child: Text(
                "Error al conectar a Firestore: ${snapshot.error}",
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            );
          }
          // Mientras tanto, muestra un indicador de carga
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
