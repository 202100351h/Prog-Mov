import 'package:app9_shared_2024/pages/home_page.dart';
import 'package:app9_shared_2024/utils/shared_global.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedGlobal preference = SharedGlobal();
  await preference.initSharedPreferences();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
