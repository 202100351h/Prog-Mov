import 'package:firebase_core/firebase_core.dart';
import 'package:firetask/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Firetask",
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Cambiado para usar HomePage directamente
    );
  }
}
